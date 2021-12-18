void printArray(List<int> dizi, int elemanSayisi) {
  print("dizi[] = { ");
  for (int i = 0; i < elemanSayisi; i++) {
    print("$dizi[i] , ");
  }
  print("}\n");
}

void bubbleSort(List<int> dizi, int elemanSayisi) {
  int temp, i, j;
  bool isSwap = false;
  printArray(dizi, elemanSayisi);

  for (i = 0; i < elemanSayisi; i++) {
    isSwap = false;
    for (j = 0; j < elemanSayisi - i - 1; j++) {
      if (dizi[j] > dizi[j + 1]) {
        temp = dizi[j];
        dizi[j] = dizi[j + 1];
        dizi[j + 1] = temp;
        isSwap = true;
      }
    }
    if (isSwap == false) {
      break;
    }
  }

  printArray(dizi, elemanSayisi);
}

void main() {
  List<int> ornekDizi = [8, 4, 6, 8, 4];

  bubbleSort(ornekDizi, 5);
}
