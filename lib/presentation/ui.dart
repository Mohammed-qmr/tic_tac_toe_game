import 'dart:io';

import '../logic/entities/board.dart';
import '../logic/usecases/make_move.dart';
import '../logic/usecases/check_winner.dart';

class ConsoleUI {
  final Board _board = Board();
  final MakeMove _makeMove = MakeMove();
  final CheckWinner _checkWinner = CheckWinner();

  void startGame() {
    String currentPlayer = 'X';
    bool gameEnded = false;

    print('🎮 Welcome to Tic-Tac!\n');

    while (!gameEnded) {
      _board.display();
      print("Player $currentPlayer, enter your move (1-9): ");
      final input = int.tryParse(stdin.readLineSync()?? '');

      if (input == null || !_makeMove.isValidMove(_board, input)) {
        print("Invalid move. Try again.\n");
        continue;
      }

      _makeMove.execute(_board, input, currentPlayer);
      final result = _checkWinner.execute(_board);

      if (result != null) {
        _board.display();
        print(result == 'Draw' ? 'It\'s a Draw!' : ' Player $result wins!');
        gameEnded = true;
      } else {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
    }
  }
}
 

