import 'dart:math';

void main(){
  const pi = 3.14; //compile-time constant เอาค่าที่กำหนดไปแทนค่าในโค้ดก่อนถึงเวลา Run-time แล้วค่อย ถึงเวลา Compile จริงๆ
  //ซึ่งค่า const จะต้องเป็นค่าที่ถูกกำหนดโดย literal หรือ ค่าที่ถูกคำนวณจาก const ตัวอื่นเท่านั้น (ถ้าเป็นตัวแปรชนิดอื่นๆจะทำให้เกิด error)
  var x = pi * 2; //เจอ pi ตรงไหน เอาค่าที่ถูกกำหนดไหนตัวแปร pi แทนที่ได้เลย ---> แล้วค่อยCompile Source Code ----> ไม่ต้อง allocate พื้นที่ (ค่าแบบ literal)

  //final pi2 = 3.14; //เป็นชนิดข้อมูลที่ไม่สามารถเปลี่ยนค่าได้แล้ว เป็นการเซ็ทการเพียง1ครั้งแค่นั้น ----> เป็นตัวแปรที่ Allocate Memory เอาไว้
  final r = Random(); //ตัวแปร r ไม่สามารถเปลี่ยนค่าได้แล้ว
  var answer = r.nextInt(100) + 1;
  // var product = Product(name : "aaa",price : 10);
  // product = Product(name : "bbb",price : 20); //ตัวแปร obj ไม่ควรใช้ final เพราะเราอาจจะมีการเปลี่ยนแปลงการส่งพารามิเตอร์ไปยังฟังก์ชันได้
}