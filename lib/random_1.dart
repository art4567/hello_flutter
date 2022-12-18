import 'dart:io';
import 'dart:math';

// ctrl + alt + l = format code auto
// ignore_for_file: avoid_print
// บรรทัดบนหมายถึงไม่ให้ print มี warning
void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var isCorrect = false;
  var count = 0;
  print("╔═══════════════════════════════════════════════════════════	");
  print("║                     GUESS THE NUMBER	");
  print("╟─────────────────────────────────────────────────────────── ");
  do {
    stdout.write(
        "║ Guess the Number between 1 and 100 (inclusive) : ");
    var input = stdin.readLineSync();
    if (input == null) {
      print("Error, input is Null.");
      continue;
    }
    var guess = int.tryParse(input);
    if (guess == null) {
      //print("Input error,please enter number only.");
      continue;
    }
    if (guess == answer) {
      print("║ ➣ $answer is CORRECT ❤, total guesses: $count.");
      isCorrect = true;
      count = count+1;
    }
    else if (guess > answer) {
      print("║ ➣ $guess is TOO HIGH! ▲");
      print("╟─────────────────────────────────────────────────────────── ");
      isCorrect = false;
      count = count+1;
    }
    else if (guess < answer) {
      print("║ ➣ $guess is TOO LOW! ▼");
      print("╟─────────────────────────────────────────────────────────── ");
      isCorrect = false;
      count = count+1;
    }
  } while (!isCorrect);
  print("╟─────────────────────────────────────────────────────────── ");
  print("║                         THE END	");
  print("╚═══════════════════════════════════════════════════════════	");
}