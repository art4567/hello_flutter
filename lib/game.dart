// ignore_for_file: avoid_print
import 'dart:math';

// enumeration ---> เป็นการ Design Data type ชนิดใหม่ ---> กำหนดค่าได้หลายแบบแล้วแต่เราเลย
enum GuessResult{
  correct , tooHigh , toLow
}

class Game{ //ชื่อคลาสจะต้องใหญ่ตั้งแต่ตัวแรก -- ชื่อ class กับ ชื่อ file ต้องตรงกัน (ไม่เหมือน java)
  final int answer = Random().nextInt(100) + 1; // ถ้าตัวแปรเป็น final ต้องกำหนดค่าเริ่มต้นให้ตอน initialization (ตอนประกาศ)
  // late int answer; //กำหนดค่าให้ช้าหน่อย แต่กำหนดแน่นอน
  int _totalGuesses = 0;

  //constructor * สร้างค่า obj ให้กับ class
  Game(){
    print("Answer is $answer");
  }
  //กรณีที่1
  //Game() : answer = Random().nextInt(100) + 1; เป็นการ Initialization ก่อนจะเข้าไปใน body ของ class

  //กรณีที่2
  // Game() : answer = Random().nextInt(100) + 1 { //ชื่อจะตรงกับชื่อ class
  // answer = Random().nextInt(100) + 1; ---> ไม่สามารถกำหนดค่าให้ตัวแปร final ได้
 // }

  GuessResult doGuess(int guess){ //หน้าที่แค่return ture/false ออกไปให้ user เท่านั้น
    _totalGuesses++;
    if (guess == answer) {
      // print("║ ➣ $guess is CORRECT ❤, total guesses: $_totalGuesses.");
      // print("╟─────────────────────────────────────────────────────────── ");
      // print("║                         THE END	");
      // print("╚═══════════════════════════════════════════════════════════	");
      return GuessResult.correct;
    } else if (guess > answer) {
      // print("║ ➣ $guess is TOO HIGH! ▲");
      // print("╟─────────────────────────────────────────────────────────── ");
      return GuessResult.tooHigh;
    } else{
      // print("║ ➣ $guess is TOO LOW! ▼");
      // print("╟─────────────────────────────────────────────────────────── ");
      return GuessResult.toLow;
    }
  }

  //get totalGuesses
  // int getGuesses(){
  //   return _totalGuesses;
  // }

  int get getTotalGuesses{
    return _totalGuesses;
  }
}
// var myAnswer; ตัวแปรไม่จำเป็นต้องขึ้นด้วตัวใหญ่
// void myFunction(){ } //ฟังก์ชันก็เช่นกัน
// doGuess ไม่ควรปริ้นค่าออกไปให้ user ดู ไม่ถูกหลักการณ์