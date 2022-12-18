void main(){
  var p1 = Person("aaa","sss",20);
  var p2 = Person ("bbb","xxx",30);


  print(p1.firstname);
  print(p2.lastname);
  print(p1.age.toString());
  final String x; //เปลี่ยนค่าไม่ได้
  x = 'asd';
  // x = f1(); ใช้ไม่ได้เพราะประกาศการเปลี่ยนค่าได้เพียง1ครั้งเท่านั้น
  p1.firstname = "rrr";
  print(p1.firstname);


  var name = "Eiei";
  var prices = 100;
  //สร้าง นิ่ Product โดยใช้ข้อมูลดึงมาจาก database (สมมติ)
  var product = Product(name,prices,orderCount: 10); //การส่งค่าของพารามิเตอร์ optional จะต้องเขียนชื่อพารามิเตอร์ด้วยตอนส่งค่า
  print(product.name);
  print(product.price.toString());
  print(product.orderCount.toString());
  product.orderCount = 10;
  print(product.orderCount.toString());
}
String f1(){
  return "Hello";
}
class Person{
  String firstname; //ถ้าเราไมไ่ด้กำหนดค่าเริ่มต้นให้ตัวแปร ค่า default จะเป็นค่า null ให้ ซึ่งมันขัดแย้งกับชนิดของตัวแปรที่ไม่ต้องการให้เป็น null
  String lastname; //ใช้ final ได้ แต่เปลี่ยนค่าไม่ได้
  int age; //มักจะ final กันเพราะ ไม่อยากให้เปลี่ยนชื่อที่ถูกกำหนดไวแล้ว

  Person(this.firstname,this.lastname,this.age); //เก็บค่าที่ถูกส่งมาเก็บลงในตัวแปรที่อยู่ใน class Person

}
class Product{
  final String name;
  final int price;
  int orderCount = 0;
  Product(this.name,this.price,{required this.orderCount}); //constructor = กำหนดค่าเริ่มต้นให้กับตัวแปรใน class
// ถ้ามี require คือการขอค่าจาก user (ต้องส่งค่ามาด้วย) แต่ถ้าไม่มี require จะต้องกำหนดค่าเริ่มต้นให้กับตัวแปรนั้นด้วย
// name , price เป็น position parameter -----> ส่งค่าตามตำแหน่ง
// {} = บอกให้รู้ว่า เป็น optional ส่งค่าหรือไม่ส่งก็ได้ ----> name parameter
}