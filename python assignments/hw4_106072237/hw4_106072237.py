# Linear Algebra 2018 Assignment 4

import imageio as imio
import matplotlib.pyplot as plt
import numpy as np

def rgb2gray(rgb):
    return np.dot(rgb[...,:3], [0.299, 0.587, 0.114])

#fix k
for h in range(6):
    if (h == 0):
        continue
    if (h == 1):
        print("obj1_compress")
        img = rgb2gray(imio.imread('../desktop/106072237_obj1.jpg'))
    if (h == 2):
        print("obj2_compress")
        img = rgb2gray(imio.imread('../desktop/106072237_obj2.jpg'))
    if (h == 3):
        print("obj3_compress")
        img = rgb2gray(imio.imread('../desktop/106072237_obj3.jpg'))
    if (h == 4):
        print("obj4_compress")
        img = rgb2gray(imio.imread('../desktop/106072237_obj4.jpg'))
    if (h == 5):
        print("obj5_compress")
        img = rgb2gray(imio.imread('../desktop/106072237_obj5.png'))
    height, width = np.shape(img)
    print("height = " ,height , ", width = " ,width)

    f1 = plt.subplot(221)
    if (h == 0):
        continue;
    if(h == 1):
        f1.set_title("(a) Original picture (797x598)")
    if(h == 2):
        f1.set_title("(a) Original picture (846x564)")
    if(h == 3):
        f1.set_title("(a) Original picture (843x564)")
    if(h == 4):
        f1.set_title("(a) Original picture (235x204)")
    if(h == 5):
        f1.set_title("(a) Original picture (917x872)")
    plt.imshow(img, cmap="gray")

    size = 50
    value_k = 50
    U, S, V = np.linalg.svd(img, full_matrices=True)
    im1 = np.uint8(np.dot(U[:, :size] * S[:size], V[:size,:]))

    f2 = plt.subplot(222)
    plt.subplots_adjust(wspace =0.5)
    f2.set_title("(b) Compressed with $k$=50")
    plt.imshow(im1, cmap="gray")
    print("compression ratio = " , (height * value_k + value_k + value_k * width) / height / width)

    f3 = plt.subplot(223)
    plt.subplots_adjust(hspace =0.5)
    f3.set_title("(c) Difference between (a) and (b)")
    plt.imshow(img-im1, cmap="gray")

    sum = 0
    for i in range(height):
        for j in range(width):
            if(img[i,j] == 0):
                sum = sum+abs(img[i,j]-im1[i,j])/1
            else:
                sum = sum+abs(img[i,j]-im1[i,j])/img[i,j]
    print("sum = " , sum/width/height)

    f4 = plt.subplot(224)
    plt.subplots_adjust(hspace =0.5)
    plt.subplots_adjust(wspace =0.5)
    f4.set_title("(d) Singular values of $A$.")
    plt.plot(range(len(S)), S)
    if(h == 0):
        continue
    if(h == 1):
        plt.savefig('106072237_obj1_compressed.jpg')
    if(h == 2):
        plt.savefig('106072237_obj2_compressed.jpg')
    if(h == 3):
        plt.savefig('106072237_obj3_compressed.jpg')
    if(h == 4):
        plt.savefig('106072237_obj4_compressed.jpg')
    if(h == 5):
        plt.savefig('106072237_obj5_compressed.jpg')
    plt.show()

#fix delta at 0.03
for h in range(6):
    if (h == 0):
        continue
    if (h == 1):
        print("obj1_delta")
        img = rgb2gray(imio.imread('../desktop/106072237_obj1.jpg'))
    if (h == 2):
        print("obj2_delta")
        img = rgb2gray(imio.imread('../desktop/106072237_obj2.jpg'))
    if (h == 3):
        print("obj3_delta")
        img = rgb2gray(imio.imread('../desktop/106072237_obj3.jpg'))
    if (h == 4):
        print("obj4_delta")
        img = rgb2gray(imio.imread('../desktop/106072237_obj4.jpg'))
    if (h == 5):
        print("obj5_delta")
        img = rgb2gray(imio.imread('../desktop/106072237_obj5.png'))
        
    height, width = np.shape(img)
    print("height = " ,height , ", width = " ,width)

    size = 50
    sum = 300
    while (abs(sum - 0.03) > 0.005):
        size = size + 5
        U, S, V = np.linalg.svd(img, full_matrices=True)
        im1 = np.uint8(np.dot(U[:, :size] * S[:size], V[:size,:]))

        sum = 0
        for i in range(height):
            for j in range(width):
                if(img[i,j] == 0):
                    sum = sum+abs(img[i,j]-im1[i,j])/1
                else:
                    sum = sum+abs(img[i,j]-im1[i,j])/img[i,j]
        sum = sum/width/height
    
    print("sum = " , sum)
    print("size = ", size)
    print("compression ratio = " , size * (1 + height + width) / (height * width))

    f1 = plt.subplot(221)
    if (h == 0):
        continue
    if(h == 1):
        f1.set_title("(a) Original picture (797x598)")
    if(h == 2):
        f1.set_title("(a) Original picture (846x564)")
    if(h == 3):
        f1.set_title("(a) Original picture (843x564)")
    if(h == 4):
        f1.set_title("(a) Original picture (235x204)")
    if(h == 5):
        f1.set_title("(a) Original picture (917x872)")
    plt.imshow(img, cmap="gray")

    f2 = plt.subplot(222)
    plt.subplots_adjust(wspace = 0.5)
    if(h == 0):
        continue
    if(h == 1):
        f2.set_title("(b) Compressed with $k$=343")
    if(h == 2):
        f2.set_title("(b) Compressed with $k$=461")
    if(h == 3):
        f2.set_title("(b) Compressed with $k$=51")
    if(h == 4):
        f2.set_title("(b) Compressed with $k$=73")
    if(h == 5):
        f2.set_title("(b) Compressed with $k$=670")
    plt.imshow(im1, cmap="gray")

    f3 = plt.subplot(223)
    plt.subplots_adjust(hspace =0.5)
    f3.set_title("(c) Difference between (a) and (b)")
    plt.imshow(img-im1, cmap="gray")

    f4 = plt.subplot(224)
    plt.subplots_adjust(wspace =0.5)
    plt.subplots_adjust(hspace =0.5)
    f4.set_title("(d) Singular values of $A$.")
    plt.plot(range(len(S)), S)
    if(h == 0):
        continue
    if(h == 1):
        plt.savefig('106072237_obj1_delta.jpg')
    if(h == 2):
        plt.savefig('106072237_obj2_delta.jpg')
    if(h == 3):
        plt.savefig('106072237_obj3_delta.jpg')
    if(h == 4):
        plt.savefig('106072237_obj4_delta.jpg')
    if(h == 5):
        plt.savefig('106072237_obj5_delta.jpg')
    plt.show()
    
#fix rho at 0.7
for h in range(6):
    if (h == 0):
        continue
    if (h == 1):
        print("obj1_rho")
        img = rgb2gray(imio.imread('../desktop/106072237_obj1.jpg'))
    if (h == 2):
        print("obj2_rho")
        img = rgb2gray(imio.imread('../desktop/106072237_obj2.jpg'))
    if (h == 3):
        print("obj3_rho")
        img = rgb2gray(imio.imread('../desktop/106072237_obj3.jpg'))
    if (h == 4):
        print("obj4_rho")
        img = rgb2gray(imio.imread('../desktop/106072237_obj4.jpg'))
    if (h == 5):
        print("obj5_rho")
        img = rgb2gray(imio.imread('../desktop/106072237_obj5.png'))
    height, width = np.shape(img)
    print("height = " ,height , ", width = " ,width)

    f1 = plt.subplot(221)
    if (h == 0):
        continue
    if(h == 1):
        f1.set_title("(a) Original picture (797x598)")
    if(h == 2):
        f1.set_title("(a) Original picture (846x564)")
    if(h == 3):
        f1.set_title("(a) Original picture (843x564)")
    if(h == 4):
        f1.set_title("(a) Original picture (235x204)")
    if(h == 5):
        f1.set_title("(a) Original picture (917x872)")
    plt.imshow(img, cmap="gray")

    size = int(0.7 * height * width / (1 + height + width))
    print("size = ", size)
    U, S, V = np.linalg.svd(img, full_matrices=True)
    im1 = np.uint8(np.dot(U[:, :size] * S[:size], V[:size,:]))

    f2 = plt.subplot(222)
    plt.subplots_adjust(wspace =0.5)
    if(h == 0):
        continue
    if(h == 1):
        f2.set_title("(b) Compressed with $k$=238")
    if(h == 2):
        f2.set_title("(b) Compressed with $k$=236")
    if(h == 3):
        f2.set_title("(b) Compressed with $k$=236")
    if(h == 4):
        f2.set_title("(b) Compressed with $k$=76")
    if(h == 5):
        f2.set_title("(b) Compressed with $k$=312")
    plt.imshow(im1, cmap="gray")
    print("compression ratio = 0.7")

    f3 = plt.subplot(223)
    plt.subplots_adjust(hspace =0.5)
    f3.set_title("(c) Difference between (a) and (b)")
    plt.imshow(img-im1, cmap="gray")

    sum = 0
    for i in range(height):
        for j in range(width):
            if(img[i,j] == 0):
                sum = sum+abs(img[i,j]-im1[i,j])/1
            else:
                sum = sum+abs(img[i,j]-im1[i,j])/img[i,j]
    print("sum = " , sum/width/height)

    f4 = plt.subplot(224)
    plt.subplots_adjust(wspace =0.5)
    plt.subplots_adjust(hspace =0.5)
    f4.set_title("(d) Singular values of $A$.")
    plt.plot(range(len(S)), S)
    if(h == 0):
        continue
    if(h == 1):
        plt.savefig('106072237_obj1_rho.jpg')
    if(h == 2):
        plt.savefig('106072237_obj2_rho.jpg')
    if(h == 3):
        plt.savefig('106072237_obj3_rho.jpg')
    if(h == 4):
        plt.savefig('106072237_obj4_rho.jpg')
    if(h == 5):
        plt.savefig('106072237_obj5_rho.jpg')
    plt.show()
