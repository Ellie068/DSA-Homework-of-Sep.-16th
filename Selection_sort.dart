void main() {
  print('Original:');
  final myList = [8, 9, 3, 5, 1, 3];
  print (myList);

  selectionSort(myList);
  print('Sorted:');
  print(myList);
}

void selectionSort(List<int> myList) {
  for (int start = 0; start < myList.length - 1; start++) {
    int smallest = start;
    for (int i = start; i < myList.length; i++) {
      if (myList[i] < myList[smallest]) {
        smallest = i;
      }
    }
    if (start != smallest) {
      _swap(myList, start, smallest);
    }
    // print(myList);
  }
}

void _swap(List<int> list, int firstIndex, int secondIndex) {
  // print('Swapping index $firstIndex with index $secondIndex');
  final tempValue = list[firstIndex];
  list[firstIndex] = list[secondIndex];
  list[secondIndex] = tempValue;
}