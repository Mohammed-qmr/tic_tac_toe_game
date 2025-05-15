import '../entities/board.dart';

class MakeMove {
  bool isValidMove(Board board, int move) {
    final index = move - 1;
    return index >= 0 && index < 9 && board.isCellEmpty(index);
  }

  void execute(Board board, int move, String player) {
    final index = move - 1;
    board.setCell(index, player);
  }
}