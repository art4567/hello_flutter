//top - level variable * สร้างตัวแปรแยกออกจาก class หลักได้
import 'dart:math'; //ถ้าไม่ได้ใช้งานจะแสดงเป็นสีเทา

import 'package:flutter/foundation.dart';

var x = 10;

//top - level function * class-หลัก
void main(){
  // type inference ----> คอมไพล์จะอนุมานชนิดข้อมูลให้ตามลักษณะข้อมูลที่กำหนดให้(var)
  //ถ้าสร้างตัวแปรชนิด var หรือ dynamic ขึ้นมา แต่ไม่ได้กำหนดค่าเริ่มต้นให้ ----> ตัวแปรชนิดข้อมูล dynamic
  dynamic d;
  d = 123;
  d = "hello";
  d = false;
  d = 1.234;
  d.toLowerCase(); // ----> ต้องใช้กับตัวแปรชนิดข้อมูล string เท่านั้น ถ้าจะใช้ต้องดูการกำหนดค่าตัวแปรชนิด dynamic ล่าสุดเท่านั้น
  // var แตกต่างกับ dynamic ตรงที่ var จะกำหนดตัวแปรให้เป็นแบบ static แต่ถ้า dynamic จะเป็นแบบ dynamic เปลี่ยนแปลงชนิดข้อมูลได้ตลอดเวลา ----> แต่จะอนุมานตัวแปรอัตโนมัติ
  // Object จะเป็นการกำหนดชนิดข้อมูลอีกแบบหนึงเช่นกัน (เหมือนกับ dynamic) เป็น Root ของ class ทุก class
  // var ที่ไม่ได้กำหนดค่าเริ่มต้นให้ จะเป็นตัวแปรชนิด dynamic ทันที
  String _name; // ---> ตัวแปร name จะมีสถานะเป็น private
  int i = 123;// integer literal
  // var d = "สวัสดี"; ----> จะแปลงชนิดข้อมูล ตัวแปร_d ให้เป็น_string อัตโนมัติ
  // i = "Hello" ----> string literal ---> ตัวแปร
  // List myList = [1,2,3]; ----> List_literal

  //Random r = new Random(); การสร้างตัวแปรแรมด้อมตัวเลข ---- new เป็น optional จะพิมพ์หรือไม่พิมพ์ก็ได้
   var r = Random(); // ---> หรือสามารถกำหนดแบบนี้ได้ Random r = Random();

  // var m = classname(); ---> การกำหนดตัวแปรให้เป็นตัวใน class โดย_var_จะอนุมานชนิดข้อมูลให้เอง

  //การแทรกค่าลงไปในค่า string
  var s = "สวัสดี $i"; //string_interpolation ---> var s = "สวัสดี" + i.toString() ; ----> ตัวแปร i เป็นการดึงค่าจาก ตัวแปร i มา แล้วเปลี่ยนจาก int เป็น string
  // **** $i หมายถึง การต่อ string โดยดึงค่า i มาต่อ
  if (kDebugMode){ // ---> Run_ตอน debug mode ถ้าเป็น true จะทำงาน (ต้อง debug)
    print(s);
  }
}
//การแจ้งบัคของโปรแกรมจะมี static analysis เป็นตัวบอกข้อผิดพลาด/error ---> ไม่ได้บอก error ทุกอย่าง ---> เป็นโปรแกรม static type ----> check type ตัวแปร
//logic error เกิดจากตัวเราเอง
//การ edit configuration ให้กดตรงข้างๆ emulator แล้วเลื่อนลงมากด config
//ถ้าอยากให้โชว์รายละเอียดตัวแปรยาว กด ctrl+q

//java เป็นตัวแปรชนิดข้อมูล static type
//ตัวแปล dynamic จะรันช้ากว่า static

//null safety
void mains(){
  int i ;
  i = 123;
  i = 555; // ถ้าจะใช้ null ให้ติดเครื่องหมาย ? ไว้หลังชนิดข้อมูล ----> เป็นการบอกว่าให้ตัวแปร ยังไม่เก็บค่าอะไรลงไป ให้เก็บค่า null ลงไป
  var j = f1();
   i = j!;// i = j; ---> int i อาจมีปัญหาเพราะ i เป็นชนิดข้อมูลที่ไม่รับค่า null แต่ j เป็นชนิดข้อมูลที่เป็นมีการรับค่า null
          // ถ้าไม่อยากให้เกิด error ใส่เครื่องหมาย ! หลัง f เพื่อเป็นการยืนยันว่า ไม่ใช่ null
}
//function
int? f1(){ //f1 อาจจะ return เป็นค่า null ได้ ---> ตัวฝ่ายที่รับf1ต้องประกาศตัวแปรชนิดข้อมูลให้มีเครื่องหมาย ? ด้วย ไม่งั้นจะ error
  return 5;
}