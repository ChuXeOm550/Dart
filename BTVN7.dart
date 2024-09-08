//Tìm số nhỏ nhất trong 1 danh sách
import 'dart:io';
import 'dart:math';

void main(){
  stdout.write("Nhập vào chuỗi số, cách nhau bởi dấu cách: ");
  String? N=stdin.readLineSync()!;

  
  List<int> danhsach = N
    .split(' ') //Tách chuỗi dựa vào dấu cách
    .map((e)=>int.parse(e))//Chuyển chuỗi thành số nguyên
    .toList();//Chuyển thành danh sách

  int soNhoNhat = SoNhoNhat(danhsach);
      
  print("Số nhỏ nhất: $soNhoNhat");
}

int SoNhoNhat(List<int> danhsach){
  return danhsach.reduce((a,b)=>min(a,b));
}