import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;
  bool isCorrect = false;
  int count=0;
  print("╔═══════════════════════════════════════════════════════════	");
  print("║                     GUESS THE NUMBER	");
  print("╟─────────────────────────────────────────────────────────── ");
  do {

    stdout.write("║ Guess the Number between 1 and 100 (inclusive) : ");
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
    count = count+1;
    isCorrect = func(guess, answer,count);
  } while (!isCorrect);
  print("╟─────────────────────────────────────────────────────────── ");
  print("║                         THE END	");
  print("╚═══════════════════════════════════════════════════════════	");
}
bool func(var guess,var answer,int count) {
  int cost = 0;

if (guess == answer) {
print("║ ➣ $answer is CORRECT ❤, total guesses: $count.");
}
else if (guess > answer) {
print("║ ➣ $guess is TOO HIGH! ▲");
print("╟─────────────────────────────────────────────────────────── ");
cost = cost+1;
}
else if (guess < answer) {
print("║ ➣ $guess is TOO LOW! ▼");
print("╟─────────────────────────────────────────────────────────── ");
cost = cost+1;
}
if(cost==1)
  return false;
else
  cost = 0;
 return true;
}