//Tìm số hoàn thiện từ n đến m
import 'dart:io';

bool SoHoanThien(int number){
  int tong=0;

  for(int i=1;i<number;i++){
    if(number%i==0)
      tong+=i;
  }
  if(tong==number)
    return true;
  return false;
}

void main(){
  stdout.write("Nhập số bắt đầu: ");
  int? n=int.parse(stdin.readLineSync()!);
  stdout.write("Nhập số kết thúc: ");
  int? m=int.parse(stdin.readLineSync()!);

  stdout.write("Các số hoàn thiện từ $n đến $m: ");
  for(int i=n;i<=m;i++){
    if(SoHoanThien(i))
      stdout.write("$i ");
  }
}