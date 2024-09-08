import 'dart:io';

class HocSinh{
  String hoTen;
  String lop;
  String ngaySinh;
  double diemToan;
  double diemVan;
  double diemTA;

  //Hàm khởi tạo
  HocSinh(this.hoTen, this.lop, this.ngaySinh, this.diemToan, this.diemVan, this.diemTA);

  void NhapInfo(){
    print("Nhập họ tên: ");
    hoTen = stdin.readLineSync()!;
    print("Nhập lớp: ");
    lop =stdin.readLineSync()!;
    print("Nhập ngày sinh: ");
    ngaySinh=stdin.readLineSync()!;
    print("Nhập điểm toán: ");
    diemToan=double.parse(stdin.readLineSync()!);
    print("Nhập điểm văn: ");
    diemVan=double.parse(stdin.readLineSync()!);
    print("Nhập điểm tiếng Anh: ");
    diemTA=double.parse(stdin.readLineSync()!);
  }

  //In thông tin học sinh
  void info(){
    print("Họ Tên: $hoTen");
    print("Lớp: $lop");
    print("Ngày sinh: $ngaySinh");
    print("Điểm toán: $diemToan");
    print("Điểm Văn: $diemVan");
    print("Điểm tiếng Anh: $diemTA");
    print("Điểm trung bình: ${DTB()}");
    print("Xếp loai: ${XepLoai()}");
  }

  double DTB(){
    return ((diemTA+diemToan+diemVan)/3);
  }

  String XepLoai(){
    double dtb=DTB();
    if(dtb<5)
      return "Yếu";
    else if(dtb>=5 && dtb <6.5)
      return "Trung bình";
    else if(dtb>=6.5 && dtb<8.5)
      return "Khá";
    else
      return "Giỏi";
  }
}

void main(){
  HocSinh hs =HocSinh('Phan Thảo','CĐ TH22DĐE','22/08/2004', 7.2, 7, 8.2);
  hs.NhapInfo();
  hs.info();
}