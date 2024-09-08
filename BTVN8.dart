//Tìm số xuất hiện nhiều nhất trong danh sách

int SoXuatHienNhieuNhat(List<int> danhSach){
  //Tạo Map để đếm số lần xuất hiện của từng số
  Map<int, int> MapSo = {};

  //Đếm số lần xuất hiện từng số
  //number chạy qua từng số trong danhSach Key: 1  3  2  3  4  3  5  2
  for(var number in danhSach){  //       Value: 1  1  1  2  1  3  1  2
    if(MapSo.containsKey(number)){
      MapSo[number]=MapSo[number]!+1;
    }
    else{
      MapSo[number]=1;
    }
  }

  //Tìm số xuất hiện nhiều nhất
  int so_Lap_NhieuNhat= danhSach[0];
  int lan_Lap_MAX_hien_tai= 0;
  //                     Key      ,  Value
  MapSo.forEach((So_trong_danhSach,So_lan_lap){ //Chạy qua từng cặp key;value của Map
    if(So_lan_lap>lan_Lap_MAX_hien_tai){

      so_Lap_NhieuNhat=So_trong_danhSach;

      lan_Lap_MAX_hien_tai=So_lan_lap;
    }
  });

  return so_Lap_NhieuNhat;
}

void main(){
  List<int> danhSach = [1, 3, 2, 3, 4, 3, 2, 2];
  print("Số xuất hiện nhiều nhất là: ${SoXuatHienNhieuNhat(danhSach)}");
  
}