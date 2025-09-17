void main() {
  print('Original:');
  final myList = [8, 9, 3, 5, 1, 3];
  print (myList);

  insertionSort(myList);
  print('Sorted:');
  print(myList);
}

void insertionSort(List<int> list) {
  for (int i = 1; i < list.length; i++) {
    int hold = list[i];
    int pos = i;
    print('Holding $hold from index $i');
    while (pos > 0 && hold < list[pos - 1]) {
      print('  $hold < ${list[pos - 1]} so moving ${list[pos - 1]} to the right');
      list[pos] = list[pos - 1];
      pos = pos - 1;
    }
    print('Inserting $hold at index $pos');
    list[pos] = hold;
  }
}

void _swap(List<int> list, int firstIndex, int secondIndex) {
  // print('Swapping index $firstIndex with index $secondIndex');
  final tempValue = list[firstIndex];
  list[firstIndex] = list[secondIndex];
  list[secondIndex] = tempValue;
}