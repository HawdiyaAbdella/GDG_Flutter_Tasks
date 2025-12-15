import 'dart:io';

void pattern1(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}

void pattern2(int rows) {
  for (int i = rows; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}

void pattern3(int rows) {
  for (int i = 1; i <= rows; i++) {
    for (int space = 1; space <= rows - i; space++) {
      stdout.write(' ');
    }
    for (int star = 1; star <= (2 * i - 1); star++) {
      stdout.write('*');
    }
    print('');
  }
}

void main() {
  int rows = 5;

  print('Pattern 1:');
  pattern1(rows);

  print('\nPattern 2:');
  pattern2(rows);

  print('\nPattern 3:');
  pattern3(rows);
}