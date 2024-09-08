//Tìm số lớn nhất trong 1 danh sách
import 'dart:io';
import 'dart:math';

// void main(){
//   stdout.write("Nhập vào chuỗi số, cách nhau bởi dấu cách: ");
//   String? N=stdin.readLineSync()!;

  
//   List<int> danhsach = N
//     .split(' ') //Tách chuỗi dựa vào dấu cách
//     .map((e)=>int.parse(e))//Chuyển chuỗi thành số nguyên
//     .toList();//Chuyển thành danh sách

//   int soLonNhat = SoLonNhat(danhsach);
      
//   print("Số lớn nhất: $soLonNhat");
// }

// int SoLonNhat(List<int> danhsach){
//   return danhsach.reduce((a,b)=>max(a,b));
// }

void main(){
  List<int> danhsach = [];
  stdout.write("Nhập số lượng phần tử: ");
  int? soluong=int.parse(stdin.readLineSync()!);

  nhapSo(danhsach, soluong);
 
  print("Số lớn nhất: ${SoLonNhat(danhsach)}");
}

void nhapSo(List<int> danhsach,soluong){
  for(int i=0;i<soluong;i++){
    stdout.write("Nhập số thứ ${i+1}: ");
    int? so= int.parse(stdin.readLineSync()!);
    danhsach.add(so);
  }
}

int SoLonNhat(List<int> danhsach){
  return danhsach.reduce((a,b)=>max(a,b));
}