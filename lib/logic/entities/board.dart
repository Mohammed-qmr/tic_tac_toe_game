class Board {
  List<String> cells = List.filled(9, ' ');

  void display() {
    print('\n');
    for (int i = 0; i < 9; i += 3) {
      print(' ${cells[i]} | ${cells[i + 1]} | ${cells[i + 2]} ');
      if (i < 6) print('---+---+---');
    }
    print('\n');
  }

  bool isCellEmpty(int index) => cells[index] == ' ';
  void setCell(int index, String player) => cells[index] = player;
  bool isFull() => !cells.contains(' ');
}