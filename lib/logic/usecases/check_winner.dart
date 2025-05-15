 import '../entities/board.dart';

class CheckWinner {
  static const List<List<int>> _winPositions = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // Rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // Columns
    [0, 4, 8], [2, 4, 6],            // Diagonals
  ];

  String? execute(Board board) {
    for (var pos in _winPositions) {
      final a = pos[0], b = pos[1], c = pos[2];
      if (board.cells[a] != ' ' &&
          board.cells[a] == board.cells[b] &&
          board.cells[b] == board.cells[c]) {
        return board.cells[a]; // Return 'X' or 'O'
      }
    }

    if (board.isFull()) {
      return 'Draw';
    }

    return null;
  }
}