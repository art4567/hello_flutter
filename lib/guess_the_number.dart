// ignore_for_file: avoid_print

import 'dart:io';

import 'game.dart';

void main(){
  var game = Game();
  GuessResult guessResult = GuessResult.correct;
  // game._totalGuesses(); ไม่สามารถอ้างถึงได้
  print("╔═══════════════════════════════════════════════════════════	");
  print("║                     GUESS THE NUMBER	");
  print("╟─────────────────────────────────────────────────────────── ");

  do {
    stdout.write("║ Guess the Number between 1 and 100 (inclusive) : ");
    var input = stdin.readLineSync();
    if (input == null) {
      //print("Error, input is Null.");
      return;
    }

    var guess = int.tryParse(input);
    if (guess == null) {
      //print("Input error,please enter number only.");
      continue;
    }
    //ตัวแปรที่อยากจะเปลี่ยนชื่อทั้งหน้า ให้กด shift + f6
    guessResult = game.doGuess(guess);

    if(guessResult == GuessResult.correct){
      print("║ ➣ $guess is CORRECT ❤, total guesses: ${game.getTotalGuesses}.");
      print("╟─────────────────────────────────────────────────────────── ");
      print("║                         THE END	");
      print("╚═══════════════════════════════════════════════════════════	");
    }
    else if(guessResult == GuessResult.tooHigh){
      print("║ ➣ $guess is TOO HIGH! ▲");
      print("╟─────────────────────────────────────────────────────────── ");
    }
    else{
      print("║ ➣ $guess is TOO LOW! ▼");
      print("╟─────────────────────────────────────────────────────────── ");
    }
  } while (guessResult != GuessResult.correct);
}