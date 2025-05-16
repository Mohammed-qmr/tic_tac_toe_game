# 🎮 Tic-Tac-Toe (Dart Console Game)

A simple two-player Tic-Tac-Toe game played in the console, built using Dart.  
Players take turns placing their markers (X or O) on a 3x3 board until one wins or the game ends in a draw.

---

## 🧩 Features

- Console-based two-player gameplay  
- Easy 1–9 input system with visual board guide  
- Real-time board display after every move  
- Win and draw detection  
- Input validation for non-numeric or invalid values  
- Option to restart the game after each round  
- Player X always starts the game

---

## 🎮 How to Play

Enter a number from 1 to 9 to place your symbol on the board:

1 | 2 | 3
---+---+---
4 | 5 | 6
---+---+---
7 | 8 | 9


The board updates after each turn. The game ends when:
- A player aligns 3 of their markers in a row, column, or diagonal → they win
- All cells are filled → it's a draw

---

## 🛠️ Run
Run the game using:
dart run bin/main.dart


 Project Structure
lib/
 ├── entities/
 │    └── board.dart
 ├── logic/
 │    ├── check_winner.dart
 │    └── make_move.dart
 └── presentation/
      └── ui.dart
bin/
 └── main.dart
README.md


✒️ Author
Developer: Mohammed Mahmoud Abu Qamar

Email: mma.mqamar@gmail.com

