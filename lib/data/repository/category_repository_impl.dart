

import 'dart:convert';

import 'package:demo_sapo_app/data/dto/warranty_card/category_model_dto.dart';
import 'package:demo_sapo_app/domain/model/category_model.dart';
import 'package:demo_sapo_app/domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      String jsonString = fetchDataFirebase();
      final json = jsonDecode(jsonString);
      final response = CategoryModelDto.fromJson(json);
      return response.categories?? [];
    } catch (err) {
      rethrow;
    }
  }

  String fetchDataFirebase() {
    return '{"categories":[{"id":-1,"name":"Sách Tân Việt xuất bản","categories":[{"id":-11,"name":"Tủ sách Bác Hồ","categories":[{"id":1426539,"name":"Tủ sách Bác Hồ"}]},{"id":-12,"name":"Tủ sách bách khoa tri thức","categories":[{"id":1270201,"name":"Tủ sách bách khoa tri thức"}]},{"id":-13,"name":"Bộ sách khoa học vui","categories":[{"id":1426543,"name":"Bộ sách khoa học vui"}]},{"id":-14,"name":"Tủ sách thiếu nhi","categories":[{"id":1228219,"name":"Tủ sách thiếu nhi"}]},{"id":-15,"name":"Tủ sách hành trang cho bé vào lớp 1","categories":[{"id":1426544,"name":"Tủ sách hành trang cho bé vào lớp 1"}]},{"id":-16,"name":"Tủ sách tô màu","categories":[{"id":1080412,"name":"Tủ sách tô màu"}]},{"id":-17,"name":"Tủ sách học ngữ","categories":[{"id":1426546,"name":"Tủ sách học ngữ"}]},{"id":-18,"name":"Tủ sách kinh tế - kinh doanh - khởi nghiệp","categories":[{"id":1212719,"name":"Tủ sách kinh tế - kinh doanh - khởi nghiệp"}]},{"id":-19,"name":"Tủ sách hồi ký","categories":[{"id":1212958,"name":"Tủ sách hồi ký"}]},{"id":-110,"name":"Tủ sách nấu ăn","categories":[{"id":1212958,"name":"Tủ sách nấu ăn"}]}]},{"id":-2,"name":"Sách tiếng việt","categories":[{"id":-21,"name":"Sách thiếu nhi","categories":[{"id":1426547,"name":"Từ 0 - 5 tuổi"},{"id":1426548,"name":"Từ 6 - 10 tuổi"},{"id":1426549,"name":"Từ 11 - 14 tuổi"},{"id":1426550,"name":"Từ 15 - 17 tuổi"}]},{"id":-22,"name":"Sách văn học","categories":[{"id":963892,"name":"Văn học kinh điển"},{"id":1136878,"name":"Văn học nước ngoài"}]},{"id":-23,"name":"Sách kỹ năng sống","categories":[{"id":1042912,"name":"Sách kỹ năng sống"}]},{"id":-24,"name":"Sách kỹ năng sống","categories":[{"id":1212921,"name":"Sách PT bản thân và làm giàu"}]},{"id":-25,"name":"Sách kinh tế - marketing","categories":[{"id":1207057,"name":"Sách kinh tế - marketing"}]},{"id":-26,"name":"Sách chăm sóc - nuôi dạy con","categories":[{"id":1080134,"name":"Tủ sách mẹ và bé"}]},{"id":-27,"name":"Sách sức khỏe - làm đẹp","categories":[{"id":1265209,"name":"Sách sức khỏe - làm đẹp"}]},{"id":-28,"name":"Sách nghiên cứu - lịch sử - địa lý","categories":[{"id":1212925,"name":"Chính trị - lịch sử"},{"id":977840,"name":"Truyện tranh lịch sử"}]},{"id":-29,"name":"Sách học ngoại ngữ - từ điển","categories":[{"id":1080743,"name":"Sách tiếng anh"},{"id":1207683,"name":"Sách tiếng hàn"},{"id":1207674,"name":"Sách tiếng nhật"},{"id":1207703,"name":"Sách tiếng trung"},{"id":1426558,"name":"Sách tiếng pháp"},{"id":1207673,"name":"Từ điển"}]},{"id":-290,"name":"Sách phong thủy - tâm linh","categories":[{"id":1212883,"name":"Sách phong thủy - tâm linh"}]}]},{"id":-3,"name":"Sách ngoại văn","categories":[{"id":-30,"name":"Sách ngoại văn","categories":[{"id":1190868,"name":"Sách ngoại văn"}]}]},{"id":-4,"name":"Manga - Comic - Truyện Tranh","categories":[{"id":-40,"name":"Manga - Comic - Truyện Tranh","categories":[{"id":1080238,"name":"Manga - Comic - Truyện Tranh"}]}]},{"id":-5,"name":"Báo thiếu niên tiền phong và nhi đồng","categories":[{"id":-50,"name":"Báo thiếu niên tiền phong và nhi đồng","categories":[{"id":1426562,"name":"Báo thiếu niên tiền phong và nhi đồng"}]}]},{"id":-6,"name":"Đồ dùng gia đình","categories":[{"id":-60,"name":"Đồ dùng gia đình","categories":[{"id":1092111,"name":"Bình giữ nhiệt/ bình nước"},{"id":1093883,"name":"Cốc sứ"},{"id":1199680,"name":"Đồng hồ các loại"},{"id":1094376,"name":"Tượng trang trí có đèn"},{"id":1193666,"name":"Đèn bàn/ đèn ngủ"},{"id":1198093,"name":"Ống tiết kiệm"},{"id":1198871,"name":"Tượng trang trí"},{"id":1199683,"name":"Đồ lưu niệm"},{"id":1202797,"name":"Khung ảnh"}]}]},{"id":-7,"name":"Văn phòng phẩm","categories":[{"id":-70,"name":"Văn phòng phẩm","categories":[{"id":1426377,"name":"Sổ lịch - sổ da - ví bút"},{"id":1207026,"name":"Balo"},{"id":1425863,"name":"Bút các loại"},{"id":1426376,"name":"Vở học sinh"},{"id":1425910,"name":"Giấy các loại"},{"id":1426380,"name":"Mực lọ/ mực ống"},{"id":1228227,"name":"Thước kẻ"},{"id":1426379,"name":"Ghim/ dập ghim"},{"id":1228224,"name":"Kéo văn phòng/ kéo thủ công"},{"id":1426383,"name":"Keo dán/ hồ các loại"}]}]},{"id":-8,"name":"Đồ chơi trẻ em","categories":[{"id":-80,"name":"Đồ chơi trẻ em","categories":[{"id":1426572,"name":"Đồ chơi vtech"},{"id":1209009,"name":"Đồ chơi trí tuệ"},{"id":1249724,"name":"Đồ chơi các loại"},{"id":1214563,"name":"Búp bê"},{"id":1080930,"name":"Thú bông"}]}]}]}';
  }

}