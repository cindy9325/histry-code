#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
#include <string>
using namespace std;

int main(int argc, char const *argv[])
{
	int setting[4]; // address_bits, block_size, cache_sets, associativities
	int offset;
	int index;
	int miss_count = 0;
	int index_input;
	int tag_input;
	int cache[1000][1000] = {0};// index, associatives
	int NRU[1000][1000] = {0};
	int valid[1000][1000] = {0};
	int flag_miss;
	int flag_zero;
	int flag_free;
	int flag_twozero = 1;
	int count = 0;
	char c;
	string requirement;
	fstream file;
	ofstream output;

	//read cache
	file.open(argv[1], ios::in);
	for(int i = 0; i < 4; i++){
		setting[i] = 0;
		while(file.get(c))
			if(c == ' ') break;
		while(file.get(c)){
			if(c >= '0' && c <= '9')
				setting[i] = c - '0' + setting[i]*10;
			else
				break;
		}
	}
	file.close();

	offset = log2(setting[1]);
	index = log2(setting[2]);

	output.open(argv[3], ios::out);
	output << "Address bits: " << setting[0] << endl;
	output << "Block size: " << setting[1] << endl;
	output << "Cache sets: " << setting[2] << endl;
	output << "Associativity: " << setting[3] << "\n\n";
	output << "Offset bit count: " << offset << endl;
	output << "Indexing bit count: " << index << endl;
	output << "Indexing bits:";
	for(int i = offset + index - 1; i >= offset; i--)
		output << " " << i;
	output << "\n\n";

	// load the inferences
	file.open(argv[2], ios::in);
	getline(file, requirement);
	output << requirement << endl;

	while(1){
		getline(file, requirement);

		// end of reading
		if(requirement[0] != '0' && requirement[0] != '1')
			break;

		// to tranform index input from binary to decimal
		count = 0;
		index_input = 0;
		for(int i = setting[0] - offset - 1; i >= setting[0] - offset - index; i--){
			index_input += (requirement[i] - '0') * pow(2.0, static_cast<double>(count));
			count++;
		}

		// to transform tag from binary to decimal
		count = 0;
		tag_input = 0;
		for(int i = setting[0] - offset - index - 1; i >= 0; i--){
			tag_input += (requirement[i] - '0') * pow(2.0, static_cast<double>(count));
			count++;
		}

		// to see miss or hit
		flag_miss = 1;
		// hit
		for(int i = 0; i < setting[3]; i++){
			cout << "entered hit testing function\n";
			if(cache[index_input][i] == tag_input){
				// to detect the index = 0, i = 0 first enter issue
				if(index_input == 0 && tag_input == 0 && flag_twozero == 1){
					flag_twozero = 0;
					break;
				}
				// to detect normal issue
				output << requirement << " hit\n";
				flag_miss = 0;
				NRU[index_input][i] = 1;
			}
		}

		// miss
		if(flag_miss == 1){
			output << requirement << " miss\n";
			miss_count++;

			// to see if there's any free space
			flag_free = 0;
			for(int i = 0; i < setting[3]; i++){
				if(valid[index_input][i] == 0){
					valid[index_input][i] = 1;
					cache[index_input][i] = tag_input;
					flag_free = 1;
					break;
				}
			}
			
			// if there's no free space
			if(flag_free == 0){
				// replacement
				flag_zero = 1;
				// if all are referenced
				for(int i = 0; i < setting[3]; i++){
					if(NRU[index_input][i] != 1){
						flag_zero = 0;
						break;
					}
				}
				// if all are refrenced, set all to zero
				if(flag_zero == 1){
					for(int i = 0; i < setting[3]; i++)
						NRU[index_input][i] = 0;
				}
				// find the zero nearest to the head
				for(int i = 0; i < setting[3]; i++){
					if(NRU[index_input][i] == 0){
						cache[index_input][i] = tag_input;
						break;
					}
				}
			}
		}
	}
	output << ".end\n\n" << "Total cache miss count: " << miss_count << endl;
	file.close();
	output.close();

	return 0;
}
