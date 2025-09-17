void main() {
  print('Original:');
  final myList = [8, 9, 3, 5, 1, 3];
  print (myList);

  bubbleSort(myList);
  print('Sorted:');
  print(myList);
}

void bubbleSort(List<int> myList) {
  for (int end = myList.length - 1; end > 0; end--) {
    bool swapped = false;
    for (int i = 0; i < end; i++) {
      print('Comparing index $i (value: ${myList[i]}) with index ${i + 1} (value: ${myList[i + 1]})');
      if (myList[i] > myList[i + 1]) {
        _swap(myList, i, i + 1);
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}

void _swap(List<int> list, int firstIndex, int secondIndex) {
  print('Swapping index $firstIndex with index $secondIndex');
  final tempValue = list[firstIndex];
  list[firstIndex] = list[secondIndex];
  list[secondIndex] = tempValue;
}