//Tìm số nguyên tố từ n đến m
import 'dart:io';

bool SoNguyenTo(int number){
  if(number==0 || number==1)
    return false;
  for(int i=2;i<=(number/2);i++){
    if(number%i==0 || number==0 || number==1)
      return false;
  }
  return true;
}

void main(){
  stdout.write("Nhập số bắt đầu: ");
  int? n=int.parse(stdin.readLineSync()!);
  stdout.write("Nhập số kết thúc: ");
  int? m=int.parse(stdin.readLineSync()!);

  stdout.write("Các số nguyên tố từ $n đến $m: ");
  for(int i=n;i<=m;i++){
    if(SoNguyenTo(i))
      stdout.write("$i ");
  }
}