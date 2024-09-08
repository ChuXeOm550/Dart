
import 'dart:io';

abstract class Animal{
  String tenDV;
  int soChan;

  Animal(this.soChan, this.tenDV);

  // void NhapInfo(){
  //   stdout.write("Nhập tên con vật: ");
  //   tenDV=stdin.readLineSync()!;
  //   stdout.write("Nhập số chân con vật: ");
  //   soChan=int.parse(stdin.readLineSync()!);
  // }
  // void Info(){
  //   print("Tên: $tenDV");
  //   print("Số chân: $tenDV");
  // }
  dynamic Chay();
  dynamic Keu();
}

class Dog extends Animal{

  Dog(super.soChan,super.tenDV);

 

  @override
  Keu() {
    print("Gâu gâu");
  }

  @override
  Chay() {}

}

class Cat extends Animal{

  Cat(super.soChan,super.tenDV);

  @override
  Keu() {
    print("Meowwwwwwwwwww");
  }

  @override
  Chay() {}

}

void main(){
  Dog dog=Dog(4,"Nâu");
  dog.Keu();
  Cat cat=Cat(4,"Bo");
  cat.Keu();
}