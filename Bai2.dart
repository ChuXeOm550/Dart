import 'dart:io';

void main(){
  print("Nhap thang: ");
  String? strThang = stdin.readLineSync();
  int? thang = int.parse(strThang!);

  print("Nhap nam: ");
  String? strNam = stdin.readLineSync();
  int? nam = int.parse(strNam!);

  var list =[30,28,31,30,31,30,31,31,30,31,30,31];
  if(thang==2 && isNamNhuan(nam)){
    print("Thang $thang nam $nam co 29 ngay");
  }
  else{
    print("Thang $thang nam $nam co ${list[thang-1]} ngay");
  }
  
}

bool isNamNhuan(int nam){
  if(nam%400==0||(nam%4==0&&nam%100!=0)){
    return true;
  }
  return false;
}