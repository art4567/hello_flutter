import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1; //nextBool = สุ่มค่า true/false ---> ในวงเล็บถ้ากำหนดค่า10 คือ สุ่มตั้งแต่เลข 0-9
  //สุ่มเลขที่เป็นเลขจำนวนเต็มบวก ไม่ติดค่าลบ
  // var s = Random();
  // var ans = s.nextInt(31) + 20; //การสุ่มค่าเริ่มต้นจาก 0-30 แล้ว +20 หมายถึง เป็นการ+เพิ่มไปจากเลขในวงเล็บ ----> จะเป็นการสุ่มเลขจาก 20 - 50
  //print("Guess the Number between 1 and 100 (inclusive) : ");
  // int? guess; //ใช้เป็น var guess; ได้ -----> int จะมีค่าเป็น null ได้
  var isCorrect = false;
  //ทำ do-while เพื่อให้วนลูปซ้ำๆจนกว่าจะเจอค่าที่ทายถูกต้อง
  do {
    stdout.write(
        "Guess the Number between 1 and 100 (inclusive) : "); //ให้การพิมพ์ต่อท้ายข้อความ
    //console app
    var input = stdin.readLineSync(); //จะเป็นการรับค่า input ทางคีย์บอร์ด ---> อาจมีการรีเทิร์นค่าเป็น null ได้

    //check input ว่าจะ null ไหม??
    if (input == null) { //ถ้าตอน dev เราต้องมี if เพื่อดักการทำงาน error ของโค้ด
      print("Error, input is Null.");
      continue; //ย้อนกลับไปทำที่ส่วนเริ่มต้นของ loop ----> ถ้าออก loop ใช้ break
    }
    //แปลงค่าตัวอักษรที่ได้รับค่าจากคีย์บอร์ด-->ตัวเลขจำนวนเต็ม
    var guess = int.tryParse(
        input); //แปลงตัวอักษรเป็นเลขจำนวนเต็ม ---->เรียกจาก class int ได้โดยตรง ----> ในวงเล็บเป็นข้อมูล String ชนิดไม่ใช้ null
    // tryParse จะรีเทิร์นค่าเป็น null มาก็ต่อเมื่อ มีตัวอักษรภาษาอังกฤษ
    if (guess == null) {
      print("Input error,please enter number only.");
      continue;
    }
    print("You Input IS : $input");
    //print("You Random number IS : $ans");
    //Linter เช็คความสวยงามของโค้ด
    //check ค่าที่โปรแกรมแรนดอมเลขกับ user พิมพ์มา
    //isCorrect = doGuess(guess, answer); //เรียกใช้ฟังก์ชันdoGuess
    if (guess == answer) {
      print("CORRECT! The answer is $answer."); //print("CORRECT! The answer is ${ans + 1}"); ---> การเขียนโดนเพิ่มค่า string ลงไปในโค้ด
      isCorrect = true;
    }
    else if (guess > answer) {
      print("TOO HIGH!!");
      isCorrect = false;
    }
    else if (guess < answer) {
      print("TOO LOW!!");
      isCorrect = false;
    }
  } while (!isCorrect); //ตราบใดที่ guess ไม่เท่ากับ answer วนต่อไป while(guess != answer); - Readability
}
//การใช้ฟังก์ชัน
// bool doGuess(int guess, int answer)
// {
// if (guess == answer) {
// print("CORRECT! The answer is $answer."); //print("CORRECT! The answer is ${ans + 1}"); ---> การเขียนโดนเพิ่มค่า string ลงไปในโค้ด
// return true;
// }
// else if (guess > answer) {
// print("TOO HIGH!!");
// return false;
// }
// else if (guess < answer) {
// print("TOO LOW!!");
// return false;
// }
// }
//ถ้าจะ import alt + enter
//ถ้าจะดูรายละเอียดเมธอด ctrl + q
//ถ้าอยากดูว่าในวงเล็บใส่ข้อมูลชนิดใดได้บ้าง ctrl + p
//KOTLIN - JVM-based = มี null safety สร้างโดยบริษัท JetBrains
//IntelliJ Platform เอาไว้เป็น java คอมพิวเตอร์ , phpStorm , pyCharm , Android Studio