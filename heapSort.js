function heapSort(array) {

    //build a max heap out of the array
    buildMaxHeap(array);

    let lastElement = array.length - 1;
    //continue to heap sort until we have one element left in the array
    while (lastElement > 0) {

        swap(array, 0, lastElement);
        heapify(array, 0, lastElement);
        lastElement -= 1;
    }
}

function buildMaxHeap(array) {
    let i = (array.length / 2) - 1;
    i = Math.floor(i);

    //build heap out of all elements passed in 
    while (i >= 0) {
        heapify(array, i, array.length);
        i -= 1;
    }
}

function heapify(heap, i, max) {
    let index, leftChild, rightChild;

    while (i < max) {
        index = i;

        leftChild = (2*i) + 1;
        rightChild = (2*i) + 2;

        if (leftChild < max && heap[leftChild] > heap[index]) {
            index = leftChild;
        }
        if (rightChild < max && heap[rightChild] > heap[index]) {
            index = rightChild;
        }

        if (index === i) {
            return;
        }

        swap(heap, i, index);

        i = index;
    }
}

function swap(array, firstItemIndex, lastItemIndex) {
    let tmp = array[firstItemIndex];

    //swap first and last items in the array
    array[firstItemIndex] = array[lastItemIndex];
    array[lastItemIndex] = tmp;
}

//runs in O(n log n) time.