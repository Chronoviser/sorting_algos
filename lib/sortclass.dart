class SortInput {
  SortInput();

  static List SelectionSort(List list) {
    if (list == null || list.length == 0) return null;
    int n = list.length;
    int i, steps;
    for (steps = 0; steps < n; steps++) {
      for (i = steps + 1; i < n; i++) {
        if (list[steps] > list[i]) {
          swap(list, steps, i);
        }
      }
    }
    return list;
  }

  static List BubbleSort(List inputArray) {
    if (inputArray == null || inputArray.length == 0) return null;
    int n = inputArray.length;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (inputArray[j] > inputArray[j + 1]) {
          int temp = inputArray[j];
          inputArray[j] = inputArray[j + 1];
          inputArray[j + 1] = temp;
        }
      }
    }
    return inputArray;
  }

  static List InsertionSort(List list) {
    if (list == null || list.length == 0) return null;
    int n = list.length;
    int temp, i, j;

    for (i = 1; i < n; i++) {
      temp = list[i];
      j = i - 1;
      while (j >= 0 && temp < list[j]) {
        list[j + 1] = list[j];
        --j;
      }
      list[j + 1] = temp;
    }
    return list;
  }

  static void merge(List list, int leftIndex, int middleIndex, int rightIndex) {
    int leftSize = middleIndex - leftIndex + 1;
    int rightSize = rightIndex - middleIndex;

    List leftList = new List(leftSize);
    List rightList = new List(rightSize);

    for (int i = 0; i < leftSize; i++) leftList[i] = list[leftIndex + i];
    for (int j = 0; j < rightSize; j++)
      rightList[j] = list[middleIndex + j + 1];

    int i = 0, j = 0;
    int k = leftIndex;

    while (i < leftSize && j < rightSize) {
      if (leftList[i] <= rightList[j]) {
        list[k] = leftList[i];
        i++;
      } else {
        list[k] = rightList[j];
        j++;
      }
      k++;
    }

    while (i < leftSize) {
      list[k] = leftList[i];
      i++;
      k++;
    }

    while (j < rightSize) {
      list[k] = rightList[j];
      j++;
      k++;
    }
  }

  static void MergeSort(List list, int leftIndex, int rightIndex) {
    if (leftIndex < rightIndex) {
      int middleIndex = (rightIndex + leftIndex) ~/ 2;

      MergeSort(list, leftIndex, middleIndex);
      MergeSort(list, middleIndex + 1, rightIndex);

      merge(list, leftIndex, middleIndex, rightIndex);
    }
  }

  static int partition(List list, int low, int high) {
    if (list == null || list.length == 0) return 0;
    int pivot = list[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (list[j] <= pivot) {
        i++;
        swap(list, i, j);
      }
      swap(list, i + 1, high);
      return i + 1;
    }
  }

  static void QuickSort(List list, int low, int high) {
    if (low < high) {
      int pi = partition(list, low, high);
      QuickSort(list, low, pi - 1);
      QuickSort(list, pi + 1, high);
    }
  }

  static void swapList(List list, int i, int largest) {
    int swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;
  }

  static void heapify(List list, int n, int i) {
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;

    if (l < n && list[l] > list[largest]) {
      largest = l;
    }

    if (r < n && list[r] > list[largest]) {
      largest = r;
    }

    if (largest != i) {
      swapList(list, i, largest);
      heapify(list, n, largest);
    }
  }

  static void swapHeap(List list, int i) {
    int temp = list[0];
    list[0] = list[i];
    list[i] = temp;
  }

  static void HeapSort(List list) {
    int n = list.length;
    for (int i = (n ~/ 2); i >= 0; i--) {
      heapify(list, n, i);
    }
    for (int i = n - 1; i >= 0; i--) {
      swapHeap(list, i);
      heapify(list, i, 0);
    }
  }

  static List CountSort(List list) {
    int n = list.length;
    int K = 0;
    for (int i = 0; i < n; i++) {
      if (list[i] > K) K = list[i];
    }
    List Aux = [];
    List sortedList = [];
    for (int i = 0; i <= K; i++) {
      Aux.add(0);
    }

    for (int i = 0; i < n; i++) {
      Aux[list[i]]++;
    }

    for (int i = 0; i <= K; i++) {
      int tmp = Aux[i];
      while (tmp != 0) {
        sortedList.add(i);
        tmp--;
      }
    }
    return sortedList;
  }

  static int largest(List a) {
    int larger = a[0], i;
    for (i = 1; i < 10; i++) {
      if (a[i] > larger) larger = a[i];
    }
    return larger;
  }
  static int getMax(List list,int n){
    int max = list[0];
    for(int i=1;i<n;i++)
    {
      if(list[i] > max)
        max = list[i];
    }
    return max;
  }
  static void countRadixSort(List list,int n,int exp){
    List output = new List(n);
    int i;
    List count = [0,0,0,0,0,0,0,0,0,0];
    for(i=0;i<n;i++){
      count[(list[i]~/exp)%10]++;
    }
    for(i=1;i<10;i++){
      count[i]  = count[i] + count[i-1];
    }
    for(i = n-1;i>=0;i--){
      output[count[(list[i]~/exp)%10]-1] = list[i];
      count[(list[i]~/exp)%10]--;
    }
    for(i=0;i<n;i++)
      list[i] = output[i];
  }
  static void RadixSort(List list) {
    int n = list.length;
    int m = getMax(list,n);
    for(int exp = 1; m~/exp>0; exp = exp*10){
      countRadixSort(list,n,exp);
    }
  }
  static void swap(List list, int steps, int i) {
    int temp = list[steps];
    list[steps] = list[i];
    list[i] = temp;
  }
}
