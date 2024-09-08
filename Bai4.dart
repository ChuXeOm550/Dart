import 'dart:io';
import 'dart:math';

abstract class HinhHoc{
  double tinhDienTich();
  double tinhChuVi();
}

class HinhTron extends HinhHoc{
  double banKinh;
  double PI =3.14;

  HinhTron(this.banKinh);

  @override
  double tinhChuVi(){
    return PI*2*banKinh;
  }

  @override
  double tinhDienTich(){
    return PI*pow(banKinh,2);
  }
}

class HinhChuNhat extends HinhHoc{
  double chieuDai;
  double chieuRong;

  HinhChuNhat(this.chieuDai, this.chieuRong);

  @override
  double tinhChuVi(){
    return (chieuDai+chieuRong)*2;
  }

  double tinhDienTich(){
    return chieuDai*chieuRong;
  }
}

class HinhTamGiac extends HinhHoc{
  double canhA;
  double canhB;
  double canhC;

  HinhTamGiac(this.canhA, this.canhB, this.canhC);

  @override
  double tinhChuVi(){
    return canhA+canhB+canhC;
  }
   
  @override
  double tinhDienTich(){
    double p = tinhChuVi()/2;
    return sqrt(p*(p-canhA)*(p-canhB)*(p-canhC));
  }
}

void main(){
  //Hình tròn
  stdout.write("Nhập bán kính: ");
  double? banKinh=double.parse(stdin.readLineSync()!);
  HinhTron ht =HinhTron(banKinh);
  print("Chu vi hình tròn: ${ht.tinhChuVi()}");
  print("Diện tích hình tròn: ${ht.tinhDienTich()}");
  print("--------------------------------------");

  //Hình chữ nhật
  stdout.write("Nhập chiều dài: ");
  double? chieuDai=double.parse(stdin.readLineSync()!);
  stdout.write("Nhập chiều rộng: ");
  double? chieuRong=double.parse(stdin.readLineSync()!);
  HinhChuNhat hcn =HinhChuNhat(chieuDai, chieuRong);
  print("Chu vi hình chữ nhật: ${hcn.tinhChuVi()}");
  print("Diện tích hình chữ nhật: ${hcn.tinhDienTich()}");
  print("--------------------------------------");

  //Hình tam giác
  stdout.write("Nhập cạnh a: ");
  double? canhA=double.parse(stdin.readLineSync()!);
  stdout.write("Nhập cạnh b: ");
  double? canhB=double.parse(stdin.readLineSync()!);
  stdout.write("Nhập cạnh c: ");
  double? canhC=double.parse(stdin.readLineSync()!);
  HinhTamGiac htg=HinhTamGiac(canhA, canhB, canhC);
  print("Chu vi hình tam giác: ${htg.tinhChuVi()}");
  print("Diện tích hình tam giác: ${htg.tinhDienTich()}");
  print("--------------------------------------");
  
}