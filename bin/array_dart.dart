import 'dart:io';

void main() {
  print('Enter the dimensions of the arrays (rows columns):');
  int rows = int.parse(stdin.readLineSync()!);
  int columns = int.parse(stdin.readLineSync()!);

  print('Enter elements for the first array:');
  List<List<int>> array1 = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      row.add(int.parse(stdin.readLineSync()!));
    }
    array1.add(row);
  }

  print('Enter elements for the second array:');
  List<List<int>> array2 = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      row.add(int.parse(stdin.readLineSync()!));
    }
    array2.add(row);
  }

  List<List<int>> sum = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < columns; j++) {
      row.add(array1[i][j] + array2[i][j]);
    }
    sum.add(row);
  }

  print('Sum of the arrays:');
  for (int i = 0; i < rows; i++) {
    print(sum[i]);
  }
}
