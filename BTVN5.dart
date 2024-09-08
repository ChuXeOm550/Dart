//In 1 bảng cửu chương
import 'dart:io';

void main(){
  stdout.write("Nhập số nguyên N: ");
  int? N=int.parse(stdin.readLineSync()!);
  InBCH(N);
}

void InBCH(int N){
  for(int i=1;i<11;i++)
    print("$N x $i = ${N*i}");
}