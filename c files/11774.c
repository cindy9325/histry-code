#include <stdio.h>
#include <stdlib.h>
#include "function.h"

Node* Create_List(Node* head, int d){
	Node* tmp = (Node*)malloc(sizeof(Node));
	tmp->data = d;
	tmp->next = NULL;

	if(head==NULL){
		head = tmp;
	}
	else{ // find the tail of the list
		Node* r=head;
		while(r->next!=NULL){
			r=r->next;
		}
		r->next=tmp;
	}
	return head;
}

Node* Reverse_List(Node* head){
	Node* tmp, *scan, *new_head = NULL;
	while(head!=NULL){
		scan = head;
		// maintain a new linked list
		tmp = (Node*)malloc(sizeof(Node));
		tmp->data = scan->data;
		tmp->next = new_head;
		new_head = tmp;

		// clear the old linked list
		head = scan->next;
		free(scan);
	}
	return new_head;
}

void Print_List(Node* head){
	Node* tmp = head;
	while(tmp!=NULL){
		if(tmp->next!=NULL)
			printf("%d->", tmp->data);
		else
			printf("%d\n", tmp->data);
		tmp = tmp->next;
	}
}

void Free_List(Node* head){
	Node* tmp;
	while(head!=NULL){
		tmp = head;
		head = head->next;
		free(tmp);
	}
}

