

import 'dart:convert';
import 'dart:io';

import 'package:demo_sapo_app/data/dto/home_config/home_config_dto.dart';
import 'package:demo_sapo_app/domain/model/home_config/home_config_model.dart';

import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {

  @override
  Future<HomeConfigModel> getHomeConfig() async {
      String content = await fetchFromFirebase();
      final json = jsonDecode(content);
      final response = HomeConfigDto.fromJson(json);
      return response;
  }

  fetchFromFirebase() {
    return '{"topCategory":[{"name":"Sách Tân Việt xuất bản","id":-1,"icon":"https://bizweb.dktcdn.net/100/418/570/files/sach-tv-xuat-ban.png?v=1636466082357","categories":[{"id":1426539,"name":"Tủ sách Bác Hồ"},{"id":1270201,"name":"Tủ sách bách khoa tri thức"},{"id":1426543,"name":"Bộ sách khoa học vui"},{"id":1228219,"name":"Tủ sách thiếu nhi"},{"id":1426544,"name":"Tủ sách hành trang cho bé vào lớp 1"},{"id":1080412,"name":"Tủ sách tô màu"},{"id":1426546,"name":"Tủ sách học ngữ"}]},{"name":"Sách","id":-2,"icon":"https://bizweb.dktcdn.net/100/418/570/files/sach.png?v=1636466164847","categories":[{"id":1042912,"name":"Sách kỹ năng sống"},{"id":1212921,"name":"Sách PT bản thân và làm giàu"}]},{"name":"Văn phòng phẩm","id":-3,"icon":"https://bizweb.dktcdn.net/100/418/570/files/van-phong-pham.png?v=1636466187963","categories":[{"id":1426377,"name":"Sổ lịch - sổ da - ví bút"},{"id":1329344,"name":"1207026"}]},{"name":"Đồ chơi","id":-4,"icon":"https://bizweb.dktcdn.net/100/418/570/files/do-choi.png?v=1636466260210","categories":[{"id":1426377,"name":"Sổ lịch - sổ da - ví bút"},{"id":1329344,"name":"1207026"}]},{"name":"Wonderland","id":-5,"icon":"https://bizweb.dktcdn.net/100/418/570/files/wonderland-01.png?v=1636466287683","categories":[{"id":1426922,"name":"Wonderland"}]},{"name":"Lưu niệm","id":-5,"icon":"https://bizweb.dktcdn.net/100/418/570/files/luu-niem.png?v=1636466310737","categories":[{"id":1426922,"name":"Wonderland"}]},{"name":"Ưu đãi","id":100,"icon":"https://bizweb.dktcdn.net/100/418/570/files/sach.png?v=1636466164847"},{"name":"Hệ thống cửa hàng","id":101,"icon":"https://bizweb.dktcdn.net/100/418/570/files/sach.png?v=1636466164847"}],"banner":[{"image":"https://bizweb.dktcdn.net/100/418/570/files/251345539-408555054260706-7786510613280588659-n.png?v=1636466751817","id":65838884,"type":"detail_product","title":"Combo 5 Cuốn Nhật Ký Chú Bé Phil Mọt Sách"},{"image":"https://bizweb.dktcdn.net/100/418/570/files/251345539-408555054260706-7786510613280588659-n.png?v=1636466751817","id":62091317,"type":"detail_product","title":"7 kiểu người tôi gặp trong hiệu sách"},{"image":"https://bizweb.dktcdn.net/100/418/570/files/254462546-424664875999740-2932064766379590414-n.jpg?v=1636466905417","id":2500,"type":"voucher","title":"Lần đầu mua hàng trên App giảm 20K"},{"image":"https://bizweb.dktcdn.net/100/418/570/files/251583018-418775933115875-3109870428910438341-n.jpg?v=1636466826117","id":2500,"type":"voucher","title":"Giảm 10k phí vận chuyển cho đơn 200k"}],"categoriesGroup":[{"title":"Báo TNTP và Nhi Đồng","categoryIds":[1426562]},{"title":"Sách kỹ năng sống","categoryIds":[1042912]},{"title":"Sách văn học","categoryIds":[963892,1136878]},{"title":"Manga - Comic - Truyện Tranh","categoryIds":[1080238]},{"title":"Văn phòng phẩm","categoryIds":[1426377,1207026]},{"title":"Đồ chơi trẻ em","categoryIds":[1426572,1209009]}]}';
  }

}