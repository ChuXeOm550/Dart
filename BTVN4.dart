//In số từ 1 đến N theo thứ tự ngược
import 'dart:io';

void main(){
  stdout.write("Nhập số nguyên N: ");
  int? N=int.parse(stdin.readLineSync()!);
  InSo(N);
}

void InSo(int N){
  for(int i=N;i>0;i--)
    stdout.write("$i ");
}