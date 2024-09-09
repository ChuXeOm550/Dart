//Tính tổng số chẵn từ 1 đến N
import 'dart:io';
void main(){
  stdout.write("Nhập số nguyên N: ");
  int? N=int.parse(stdin.readLineSync()!);
  print("Tổng: ${tinhTongN(N)}");
}

int tinhTongN(int N){
  int tong=0;
  for(int i=0;i<=N;i+=2){
      tong+=i;
  }
  return tong;
}