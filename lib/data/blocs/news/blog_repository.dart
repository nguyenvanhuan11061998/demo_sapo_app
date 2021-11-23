

import 'dart:convert';

import 'package:demo_sapo_app/data/dto/article/list_article_model_dto.dart';
import 'package:demo_sapo_app/data/dto/blog_model_dto.dart';
import 'package:demo_sapo_app/domain/model/blogs/article_model.dart';
import 'package:demo_sapo_app/domain/model/blogs/blog_model.dart';

class BlogRepository {
  Future<List<BlogModel>> getBlogs() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    String jsonString = '{"blogs":[{"id":539490,"name":"Chính sách","description":null,"alias":"chinh-sach-1","commentable":"no","meta_title":"Chính sách","meta_description":null,"created_on":"2021-08-14T01:27:04Z","modified_on":null,"template_layout":null},{"id":514916,"name":"Tin tức","description":null,"alias":"tin-tuc","commentable":"yes","meta_title":"Tin tức","meta_description":null,"created_on":"2021-02-06T01:28:03Z","modified_on":null,"template_layout":null}]}';
    final json = jsonDecode(jsonString);
    final listBlog = (json['blogs'] as List<dynamic>).map((e) => BlogModelDto.fromJson(e)).toList();
    return listBlog;
  }



  Future<List<ArticleModel>> getArticle(int id) async {
    try {
      final json = jsonDecode(stringArticle);
      ListArticleModelDto listArticleModelDto = ListArticleModelDto.fromJson(
          json);
      return listArticleModelDto.listArticle ?? [];
    } catch (err) {
      rethrow;
    }
  }


  String stringArticle = '{"articles":[{"id":2405371,"blog_id":514916,"title":"TÂN VIỆT BOOKS VÀ HOA TRẠNG NGUYÊN COMICSTEEN PHÁT ĐỘNG CUỘC THI SÁNG TÁC ONLINE “ƯỚC MƠ VƯƠN TỚI MỘT NGÔI SAO”","alias":"tan-viet-books-va-hoa-trang-nguyen-comicteen-phat-dong-cuoc-thi-sang-tac-online-uoc-mo-vuon-toi-mot-ngoi-sao","user_id":528034,"meta_title":"TÂN VIỆT BOOKS VÀ HOA TRẠNG NGUYÊN COMICTEEN PHÁT ĐỘNG CUỘC THI SÁNG T","meta_description":"ủ ước mơ trở thành một ngôi sao rất “được lòng” netizen? Hãy kể về hành trình nỗ lực của bản thân để tạo động lực cho các bạn nhỏ phấn đấu trở thành người tài năng nhé! Báo Thiếu niên Tiền phong và Nhi đồng phối hợp với Công ty Cổ phần Văn hóa và Giáo dục Tân Việt chính thức phát động cuộc thi sáng tác online mang chủ","created_on":"2021-11-05T10:33:44Z","modified_on":"2021-11-06T03:02:16Z","published_on":"2021-11-06T02:45:00Z","content":"<h2>Bạn đang là một siêu sao âm nhạc nổi tiếng hay đang ấp ủ ước mơ trở thành một ngôi sao rất “được lòng” netizen? Hãy kể về hành trình nỗ lực của bản thân để tạo động lực cho các bạn nhỏ phấn đấu trở thành người tài năng nhé!</h2>\\n<p>Báo Thiếu niên Tiền phong và Nhi đồng phối hợp với Công ty Cổ phần Văn hóa và Giáo dục Tân Việt chính thức phát động cuộc thi sáng tác online mang chủ đề “Ước mơ vươn tới một ngôi sao” để đánh dấu sự ra đời của ấn phẩm cùng tên: Hoa Trạng Nguyên comics teen - “Ước mơ vươn tới một ngôi sao” dành cho bạn đọc yêu thích dòng truyện tranh thần tượng.</p>\\n<p>Hãy tìm hiểu và tham gia ngay nhé.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"720\\" original-width=\\"1556\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/anh-poster-3-so.jpg?v=1634956199800\\" /></p>\\n<p><em><strong>Các bạn chọn 1 trong 2 chủ đề sau:&nbsp;</strong></em></p>\\n<p><strong>Chủ đề 1 dành cho các teen nhiều hoài bão:&nbsp;</strong>Bạn hãy viết một câu chuyện tưởng tượng về hành trình nỗ lực của bản thân để trở thành một ngôi sao âm nhạc được đông đảo công chúng yêu thích.</p>\\n<p><strong>Chủ đề 2 dành cho các teen đam mê vẽ truyện tranh:&nbsp;</strong>Bạn hãy vẽ một câu chuyện comic về sứ mệnh của một ca sỹ thần tượng của giới trẻ trong thời đại dịch COVID-19.</p>\\n<p><em><strong>Gợi ý:</strong>&nbsp;Các ngôi sao có thể sáng tác cổ động để động viên người dân ngăn chặn và đẩy lùi dịch bệnh, tham gia công tác thiện nguyện, tình nguyện, dạy các em nhỏ hát, sáng tác nhạc online…</em></p>\\n<p style=\\"text-align: center;\\"><em><img data-thumb=\\"original\\" original-height=\\"747\\" original-width=\\"1000\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/hoa-trang-nguyen-comics-teen-phat-dong-cuoc-thi-sang-tac-online-uoc-mo-vuon-toi-mot-ngoi-sao-44070.jpg?v=1636108350868\\" /></em></p>\\n<p><strong>Cách thức tham gia:&nbsp;</strong></p>\\n<p><strong><em>• Cách 1:</em>&nbsp;</strong>Cài đặt App “Nhà Sách Tân Việt” &nbsp;trên máy tính, điện thoại thông minh để theo dõi cuộc thi, danh sách thí sinh gửi bài dự thi và giải thưởng ngẫu nhiên tặng bạn theo số thứ tự bài thi được gửi qua email.</p>\\n<p><strong><em>• Cách 2:</em>&nbsp;</strong>Đặt mua ấn phẩm “Hoa Trạng Nguyên comics teen – Ước mơ vươn tới một ngôi sao” và cắt phiếu đăng ký tham gia cuộc thi “Ước mơ vươn tới một ngôi sao” in trên bộ sách, điền đầy đủ thông tin và dán vào sản phẩm dự thi rồi gửi về địa chỉ: Ấn phẩm Hoa Trạng Nguyên comics teen của Báo Thiếu niên Tiền phong và Nhi đồng – số 5, Hòa Mã, phường Phạm Đình Hồ, quận Hai Bà Trưng, Hà Nội.</p>\\n<p>Cuộc thi diễn ra từ ngày 1/11/2021 đến hết ngày 31/12/2021. Các bạn gửi bài dự thi online có thể cài App Nhà sách Tân Việt, chụp lại thông tin ghi trên phiếu dự thi in trên báo và gửi bài thi kèm hình ảnh phiếu dự thi vào hộp thư điện tử: hoatrangnguyenthieunien2021@gmail.com</p>\\n<p><strong>Giải thưởng của cuộc thi:</strong></p>\\n<p>• &nbsp; &nbsp;1 giải Nhất: 1 bộ sách/truyện + 1combo đồ dùng học tập trị giá 1 triệu</p>\\n<p>• &nbsp; &nbsp;2 giải Nhì: 2 bộ sách/truyện trị giá 500.000đ/ giải</p>\\n<p>• &nbsp; &nbsp;3 giải Ba: 3 bộ sách/truyện trị giá 300.000đ/ giải</p>\\n<p>• &nbsp; &nbsp;5 giải Khuyến Khích: 5 bộ sách/truyện trị giá 200.000đ/ giải</p>\\n<p>• &nbsp; &nbsp;10 giải Tập thể cho các nhà trường tham gia: 10 bộ sách truyện + đồ dùng học tập trong nhà trường trị giá 1.500.000đ/giải</p>","template_layout":null,"summary":null,"tags":"","author":"Nguyễn Ly","image":{"id":30322721,"src":"https://bizweb.dktcdn.net/100/418/570/articles/cuoc-thi-online.jpg?v=1636108426207","alt":null,"extension":"jpg","name":"cuoc-thi-online.jpg","content_type":"image/jpeg","created_on":"2021-11-05T10:33:46Z","modified_on":"2021-11-05T10:33:46Z","size":1012495,"width":2160,"height":1620},"alt_image":null},{"id":2401422,"blog_id":514916,"title":"BỘ SÁCH NUÔI DẠY CON TỪ 0 TUỔI CỦA VỢ CHỒNG CHUYÊN GIA THẦN KINH HỌC KUBOTA","alias":"bo-sach-nuoi-day-con-tu-0-tuoi-cua-vo-chong-chuyen-gia-than-kinh-hoc-kubota","user_id":528034,"meta_title":"BỘ SÁCH NUÔI DẠY CON TỪ 0 TUỔI CỦA VỢ CHỒNG CHUYÊN GIA THẦN KINH HỌC K","meta_description":"Nhật Bản nổi tiếng bởi phương pháp giáo dục con trẻ ngay từ khi mới sinh ra. Vợ chồng chuyên gia thần kinh học Kubota - đã xây dựng thành công Phương pháp nuôi dạy trẻ Kubota (Kubota Method) bồi dưỡng tâm hồn và trí tuệ cho trẻ từ khi còn sơ sinh – cũng là các tác giả sách giáo dục nổi tiếng tại Nhật Bản loạt sách của","created_on":"2021-11-01T08:22:17Z","modified_on":"2021-11-01T08:22:17Z","published_on":"2021-11-01T08:22:17Z","content":"<p style=\\"text-align: justify;\\">Nhật Bản nổi tiếng bởi phương pháp giáo dục con trẻ ngay từ khi mới sinh ra. Vợ chồng chuyên gia thần kinh học Kubota - đã xây dựng thành công Phương pháp nuôi dạy trẻ Kubota (Kubota Method) bồi dưỡng tâm hồn và trí tuệ cho trẻ từ khi còn sơ sinh – cũng là các tác giả sách giáo dục nổi tiếng tại Nhật Bản loạt sách của họ đã bán được 360.000 bản tại Nhật và bán bản quyền cho nhiều quốc gia trên thế giới.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"1024x1024\\" original-height=\\"1365\\" original-width=\\"4095\\" src=\\"//bizweb.dktcdn.net/thumb/1024x1024/100/418/570/files/z2800277967204-535cac89e09ef142fb1088246b89c46d.jpg?v=1635754807357\\" /></p>\\n<p style=\\"text-align: justify;\\">Bộ sách nuôi dạy con từ 0 tuổi của vợ chồng chuyên gia thần kinh học Kubota<em>&nbsp;gồm&nbsp;</em>3 cuốn sách: “Nền tảng giáo dục trí tuệ và tâm hồn trẻ từ lúc 0 tuổi”, “Cẩm nang nuôi dạy trẻ sơ sinh- Từng bước giúp trẻ thông minh hơn” và “Những bí kíp giúp trẻ rèn luyện trí thông minh ngay từ khi 1 tuổi” vừa được Tân Việt Books giới thiệu với độc giả Việt Nam, sẽ cung cấp cho các bậc phụ huynh quan tâm những bí quyết nuôi dạy trẻ từ khi vừa sinh ra một cách hiệu quả theo Phương pháp nuôi dạy trẻ Kubota.</p>\\n<p style=\\"text-align: justify;\\"><strong>Nền tảng giáo dục trí tuệ và tâm hồn trẻ từ lúc 0 tuổi</strong></p>\\n<p style=\\"text-align: justify;\\">Theo vợ chồng tác giả, chuyên gia thần kinh học Kubota, giai đoạn đầu đời của trẻ từ 0-3 tuổi là giai đoạn não bộ phát triển mạnh mẽ nhất. Việc bồi dưỡng, dạy dỗ trẻ đúng cách trong giai đoạn này có ý nghĩa vô cùng quan trọng; giúp xây dựng thành công nền tảng tư duy cho trẻ, đồng thời giúp cho cha mẹ không bị quá vất vả khi trẻ bước vào tuổi mầm non, mẫu giáo và các cấp học cao hơn sau này.</p>\\n<p style=\\"text-align: justify;\\">Thực tế, hầu hết các em bé được sinh ra trên thế giới này đều có tài năng xuất chúng. Nếu phát huy được tối đa món quà được tạo hóa ban tặng bằng sự tác động của cha mẹ trong độ tuổi sơ sinh, thì cha mẹ có thể giúp con tỏa sáng sau này.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"960\\" original-width=\\"1280\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/bo-sach-day-con-kobuta-1-2059.jpg?v=1635754898721\\" /></p>\\n<p style=\\"text-align: justify;\\">Trong cuốn sách “Nền tảng giáo dục trí tuệ và tâm hồn trẻ từ lúc 0 tuổi” các tác giả sẽ chia sẻ cho độc giả những kinh nghiệm góp phần xây dựng nền tảng trí tuệ và tâm hồn cho trẻ trong giai đoạn vàng này. Đây là những kinh nghiệm được chọn lọc từ phương pháp nuôi dạy trẻ truyền thống của người Nhật, dựa trên nền tảng là những lý thuyết thần kinh học, cũng như kinh nghiệm nuôi con của chính bản thân tác giả trong thời gian sinh sống tại Mỹ và Nhật Bản.</p>\\n<p style=\\"text-align: justify;\\">“Nền tảng giáo dục trí tuệ và tâm hồn trẻ từ lúc 0 tuổi” được chia làm 4 phần: Dạy con kỹ năng sinh tồn; Nuôi dưỡng trong con lòng biết ơn và niềm vui sống; 15 bí kíp gia tăng 120% trí lực cho trẻ và Nuôi dưỡng trẻ chăm học và mạnh mẽ.</p>\\n<p style=\\"text-align: justify;\\">Với các hướng dẫn chi tiết cho từng phần nội dung, cuốn sách là người bạn đồng hành hữu hiệu cho các bậc phụ huynh trong hành trình nuôi dạy con cái trở thành người mạnh mẽ, thông minh, có sức bền bỉ để có thể sinh tồn và tỏa sáng trong tương lai.</p>\\n<p style=\\"text-align: justify;\\"><strong>Cẩm nang nuôi dạy trẻ sơ sinh- Từng bước giúp trẻ thông minh hơn</strong></p>\\n<p style=\\"text-align: justify;\\">Đây là cuốn sách đặc biệt dành cho các bậc phụ huynh có con từ 0-1 tuổi. Được xuất bản lần đầu năm 1983, đồng thời liên tục được bổ sung các kiến thức cập nhật nhất, “Cẩm nang nuôi dạy trẻ sơ sinh- Từng bước giúp trẻ thông minh hơn” là cuốn sách luôn nằm trong danh sách những cuốn sách nuôi dạy trẻ sơ sinh bán chạy nhất tại Nhật Bản.</p>\\n<p style=\\"text-align: justify;\\">Cuốn sách này được Ibuka Masaru (nhà sáng lập Tập đoàn Sony và là tác giả của cuốn sách “Chờ đến mẫu giáo là quá muộn) cũng như nhiều giáo sư, bác sĩ, nhà quản lý giáo dục đánh giá cao.</p>\\n<p style=\\"text-align: justify;\\">Theo các tác giả, trong giai đoạn này, hành động kích thích vào các cơ quan cảm giác khiến trẻ sinh ra phản ứng, sẽ giúp hình thành nên hệ thống mạng neuron, tạo ra ảnh hưởng tích cực đến sự phát triển của não bộ sau này. Đây chính là phương pháp giáo dục phát triển não bộ được vợ chồng tác giả Kubota phát triển và mang tên của ông bà.</p>\\n<p style=\\"text-align: justify;\\">Hiệu quả của phương pháp nuôi dưỡng não bộ này đã được chứng minh bằng dữ liệu khoa học. Theo đó, hầu hết trẻ em được kích thích phát triển não bộ bằng phương pháp này đều có kết quả học tập tốt khi lớn lên, độc lập, tự tin khi tham gia vào các hoạt động xã hội, lựa chọn được những công việc thu nhập cao và có cuộc hôn nhân hạnh phúc.</p>\\n<p style=\\"text-align: justify;\\">Chia quá trình phát triển của trẻ trong năm đầu đời thành 5 giai đoạn: thời kỳ phản xạ, thời kỳ cổ cứng cáp, thời kỳ hông cứng cáp, thời kỳ trẻ biết đứng và thời kỳ trẻ biết đ; trong cuốn sách “Cẩm nang nuôi dạy trẻ sơ sinh- Từng bước giúp trẻ thông minh hơn” các tác giả sẽ đưa ra những hướng dẫn chi tiết, dễ thực hiện giúp các bậc phụ huynh có thể từng bước kích thích phát triển các giác quan cũng như não bộ con yêu của mình.</p>\\n<p style=\\"text-align: justify;\\"><strong>Những bí kíp giúp trẻ rèn luyện trí thông minh ngay từ khi 1 tuổi</strong></p>\\n<p style=\\"text-align: justify;\\">Đây là cuốn sách các bậc phụ huynh có thể tham khảo tiếp sau cuốn sách “Cẩm nang nuôi dạy trẻ sơ sinh- Từng bước giúp trẻ thông minh hơn”. Trong cuốn sách này, các tác giả sẽ tiếp tục tập trung vào việc phát triển 5 giác quan, thông qua đó phát triển trí thông minh của trẻ.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"956\\" original-width=\\"1276\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/cam-nang-nuoi-day-tre-so-sinh-kobuta-4925.jpg?v=1635754919183\\" /></p>\\n<p style=\\"text-align: justify;\\">Theo các tác giả, không chỉ tại Nhật Bản, hầu hết các phụ huynh trên thế giới hiện nay đều đã hiểu rằng: trẻ có thành tích học tập, bằng cấp tốt không hẳn đảm bảo cho thành công trong cuộc sống sau này. Để đạt được thành công, ngoài kiến thức và bằng cấp đạt được qua quá trình học tập, trẻ cần có tính sáng tạo, khả năng cạnh tranh, tham gia tốt vào các hoạt động xã hội…</p>\\n<p style=\\"text-align: justify;\\">Để trang bị được cho trẻ những khả năng đó, trẻ phải được kích thích, mở ra và phát triển tất cả các giác quan của mình. Đây là việc các bậc phụ huynh cần phải đặc biệt lưu ý thực hiện càng sớm càng tốt, đặc biệt là trong giai đoạn vàng – những năm tháng đầu đời của trẻ.</p>\\n<p style=\\"text-align: justify;\\">Thực tế, kết quả nghiên cứu cơ chế hoạt động của não bộ cho thấy, khi kích thích các giác quan, não bộ sẽ tiếp nhận thông tin để gửi tín hiệu trở lại cho các cơ quan và sinh ra hành động. Thêm vào đó, não bộ sẽ nhận thức, công nhận và ghi nhớ loại kích thích giác quan đó. Dựa vào nhận thức phong phú, năng lực hiểu biết của trẻ cũng được nâng cao và chỉ số thông minh cũng tăng theo. Trẻ sẽ trở nên thông minh và sáng tạo hơn.</p>\\n<p style=\\"text-align: justify;\\">“Những bí kíp giúp trẻ rèn luyện trí thông minh ngay từ khi 1 tuổi” gồm 6 chương sách. Trong mỗi chương sách, vợ chồng tác giả Kubota sẽ hướng dẫn các bậc phụ huynh phát triển một giác quan cho trẻ. Theo đó, mỗi chương đều có các phần nội dung theo trình tự: Tổng quan về nội dung của chương, tiếp đó họ đưa ra các bài luyện tập nâng cao, cuối cùng là tổng kết “Đôi lời từ Giáo sư Kubota”.</p>\\n<p style=\\"text-align: justify;\\">“Những bí kíp giúp trẻ rèn luyện trí thông minh ngay từ khi 1 tuổi” cũng là một trong những cuốn sách best- seller của vợ chồng giáo sư Kubota, đồng thời được nhiều chuyên gia và các nhà giáo dục đánh giá cao. Cuốn sách sẽ giúp các bậc phụ huynh phát triển được các giác quan, qua đó phát triển được tốt nhất não bộ trong độ tuổi vàng của những đứa con yêu.</p>\\n<p style=\\"text-align: justify;\\">- Theo&nbsp;báo Giaoduc.net-</p>","template_layout":null,"summary":null,"tags":"","author":"Nguyễn Ly","image":{"id":30302918,"src":"https://bizweb.dktcdn.net/100/418/570/articles/z2800277893363-0647110fe2a2120ee04d9142a1d3b509.jpg?v=1635754938170","alt":null,"extension":"jpg","name":"z2800277893363-0647110fe2a2120ee04d9142a1d3b509.jpg","content_type":"image/jpeg","created_on":"2021-11-01T08:22:18Z","modified_on":"2021-11-01T08:22:18Z","size":569612,"width":1116,"height":837},"alt_image":null},{"id":2399238,"blog_id":514916,"title":"CEO Tân Việt Books: Từ khát vọng gieo mầm văn hóa đọc… đến hành trình lan tỏa văn hóa đọc trong đại dịch","alias":"ceo-tan-viet-books-tu-khat-vong-gieo-mam-van-hoa-doc-den-hanh-trinh-lan-toa-van-hoa-doc-trong-dai-dich","user_id":528034,"meta_title":"CEO Tân Việt Books: Từ khát vọng gieo mầm văn hóa đọc… đến hành trình","meta_description":"Trong bối cảnh đại dịch toàn cầu, nỗ lực lan tỏa văn hóa đọc của bà Nguyễn Kim Thoa – CEO Tân Việt Books dường như thêm phần thử thách thêm gấp bội. Nhằm mục tiêu giúp cho thế hệ mầm non của đất nước, giới trẻ và cộng đồng yêu sách hơn, bà Nguyễn Kim Thoa – CEO Tân Việt Books luôn dành nhiều tâm huyết và tiền của để","created_on":"2021-10-29T07:04:25Z","modified_on":"2021-10-29T07:06:45Z","published_on":"2021-10-29T07:04:00Z","content":"<p style=\\"text-align: justify;\\"><em><strong>Trong bối cảnh đại dịch toàn cầu, nỗ lực lan tỏa văn hóa đọc của bà Nguyễn Kim Thoa – CEO Tân Việt Books dường như thêm phần thử thách thêm gấp bội.</strong></em></p>\\n<p style=\\"text-align: justify;\\">Nhằm&nbsp;mục tiêu giúp cho thế hệ mầm non của đất nước, giới trẻ và cộng đồng yêu sách hơn, bà Nguyễn Kim Thoa – CEO Tân Việt Books luôn dành nhiều tâm huyết và tiền của để góp phần vào chấn hưng văn hóa đọc thông qua việc xây dựng các \\"không gian tri thức\\" tuyệt vời ở Vincom Hà Nội và không ít tỉnh thành khác như: mặt bằng gần 3.000m2 mặt bằng của \\"đất vàng\\" Royal City (Hà Nội), rồi Trung tâm Thương mại Vincom Bắc Từ Liêm, Vinhome Ocean Park…</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"1175\\" original-width=\\"1600\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/z2875332951826-101188f49b5131557b656ce0296f0a4c.jpg?v=1635490843387\\" /></p>\\n<p style=\\"text-align: justify;\\">\\"Thay vì những kế hoạch du lịch hay tụ tập giao lưu gặp gỡ, toàn Đảng, toàn dân Việt Nam đồng lòng chống dịch, mỗi cơ quan, mỗi người dân đều thể hiện lòng yêu nước theo một cách riêng: Những \\"chiến sĩ áo trắng\\" vẫn đang ngày đêm căng mình nơi tuyến đầu chống dịch; Người lao động chăm chỉ làm việc trên các nhà máy, công trường đảm bảo yêu cầu phòng dịch để thực hiện mục tiêu kép của Chính phủ cũng là yêu nước.&nbsp;</p>\\n<p style=\\"text-align: justify;\\">Những độc giả yêu sách thì mua sách online, đọc sách tại nhà, nâng tầm tri thức cũng là góp phần chống dịch. Tân Việt Books tin rằng: mỗi gia đình là một \\"pháo đài\\" - đang ở đâu thì ở yên tại đó - nhất định chúng ta sẽ chiến thắng COVID-19.\\"- Bà Kim Thoa chia sẻ.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"900\\" original-width=\\"1600\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/z2875333194195-85d2de0402e6a118a39a1b46cfb6338b.jpg?v=1635490926983\\" /></p>\\n<p style=\\"text-align: justify;\\">Với lòng quyết tâm và bản lĩnh của mình, bà Nguyễn Kim Thoa đã chèo lái Tân Việt Book vượt qua khó khăn, duy trì hoạt động kinh doanh và còn chuẩn bị khai trương chi nhánh mới tại Vincom Plaza Thái Bình.</p>\\n<p style=\\"text-align: justify;\\">Cũng giống như 11 địa điểm các nhà sách nằm trong trung tâm thường mại của tập đoàn Vingroup, tọa lạc tại tầng 3, TTTM Vincom Plaza Thái Bình, 460 Lý Bôn, phường Đề Thám, thành phố Thái Bình, Tân Việt Bookstore Thái Bình nằm ở vị trí đắc địa với mặt bằng lên tới hơn một nghìn mét&nbsp;vuông. Không chỉ đến ngắm sách hay, sách đẹp, tôn vinh văn hóa đọc, độc giả còn được tiếp cận với một không gian trang hoàng, hiện đại theo tiêu chuẩn châu Âu, đội ngũ nhân viên chuyên nghiệp và thân thiện chu đáo. Ở đây sách được trưng bày đẹp mắt, hướng tới các tầng lớp độc giả khác nhau: sách người lớn, sách trẻ em, sách phát triển bản thân, ...</p>\\n<p style=\\"text-align: justify;\\">Như bà Nguyễn Kim Thoa nói: \\"Không chỉ kinh doanh sách thời thượng, sách best seller, Tân Việt còn hướng tới các độc giả đặc biệt, các cuốn sách rất rất ít người&nbsp;mua. Để Tân Việt Bookstore như một \\"bảo tàng quý phái\\" ở giữa trung tâm mua sắm sầm uất bậc nhất.\\"</p>\\n<p style=\\"text-align: justify;\\">Bên cạnh đó, khu vui chơi Tân Việt Wonderland được thiết kế theo tiêu chuẩn Châu Âu, nhằm đem đến hệ sinh thái tri thức giúp \\"cả nhà ta cùng đọc, cả nhà ta cùng chơi.\\" Quả là một không gian sinh hoạt chung cho cả gia đình, cùng hướng tới các giá trị tri thức hữu ích nhất, được quản lý theo cách hiện đại và sang trọng đặc biệt.</p>\\n<p style=\\"text-align: justify;\\"><img data-thumb=\\"original\\" original-height=\\"625\\" original-width=\\"1600\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/z2875333175875-5db2614533eebc5776f859dc8fbe6e3b.jpg?v=1635490973640\\" /></p>\\n<p style=\\"text-align: justify;\\">Hãy cùng chờ đón ngày khai trương Tân Việt Bookstore – Vincom Plaza Thái Bình vào ngày 30/10 tới đây với chương trình giảm giá, khuyến mại siêu hấp dẫn đang chờ đón người dân thành phố Thái Bình đến tham quan mua sắm và trải nghiệm không gian văn hóa &nbsp;đọc thấm đậm tinh thần tri thức, điểm hẹn lý tưởng của mọi gia đình trong thời gian sắp tới.</p>\\n<p style=\\"text-align: right;\\">- Theo: Dân Việt -</p>","template_layout":null,"summary":null,"tags":"","author":"Nguyễn Ly","image":{"id":30292042,"src":"https://bizweb.dktcdn.net/100/418/570/articles/z2875332976558-a5c7126de6fc1a46a2e3900b2a7c54de.jpg?v=1635491065790","alt":null,"extension":"jpg","name":"z2875332976558-a5c7126de6fc1a46a2e3900b2a7c54de.jpg","content_type":"image/jpeg","created_on":"2021-10-29T07:04:25Z","modified_on":"2021-10-29T07:04:25Z","size":436114,"width":1600,"height":934},"alt_image":null},{"id":2393710,"blog_id":514916,"title":"RA MẮT \\"HOA TRẠNG NGUYÊN COMICS TEEN - ƯỚC MƠ VƯƠN TỚI MỘT NGÔI SAO\\" - PHIÊN BẢN MỚI TINH","alias":"ra-mat-hoa-trang-nguyen-comics-teen-uoc-mo-vuon-toi-mot-ngoi-sao-phien-ban-moi-tinh","user_id":528034,"meta_title":"RA MẮT \\"HOA TRẠNG NGUYÊN COMICS TEEN - ƯỚC MƠ VƯƠN TỚI MỘT NGÔI SAO\\" -","meta_description":"Báo Thiếu niên Tiền phong và Nhi đồng và Tân Việt Books trân trọng giới thiệu bộ truyện tranh manga dành cho lứa tuổi học trò “Hoa Trạng Nguyên Comics Teen – Ước mơ vươn tới một ngôi sao”. Đây là bộ sách kỹ năng có cốt truyện hấp dẫn, được biên soạn từ bộ manga bản quyền nổi tiếng của Hàn Quốc “Smart Girls” đang bán","created_on":"2021-10-23T02:30:58Z","modified_on":"2021-10-23T03:03:51Z","published_on":"2021-10-23T02:30:00Z","content":"<p style=\\"text-align: justify;\\">Báo Thiếu niên Tiền phong và Nhi đồng và Tân Việt Books trân trọng giới thiệu bộ truyện tranh manga dành cho lứa tuổi học trò <b>“Hoa Trạng Nguyên Comics Teen – Ước mơ vươn tới một ngôi sao”</b>.</p>\\n<p style=\\"text-align: justify;\\">Đây là bộ sách kỹ năng có cốt truyện hấp dẫn, được biên soạn từ bộ manga bản quyền nổi tiếng của Hàn Quốc “Smart Girls” đang bán rất chạy ở Châu Á và Việt Nam.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"720\\" original-width=\\"778\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/anh-bia.jpg?v=1634956165146\\" /></p>\\n<p style=\\"text-align: justify;\\"><b>“Hoa Trạng Nguyên Comics Teen – Ước mơ vươn tới một ngôi sao”</b> bao gồm 3 tập, nội dung phong phú, tình tiết gay cấn và nét vẽ manga chuẩn phong cách teen.<i> </i></p>\\n<p style=\\"text-align: justify;\\">Tập 1: <b>Khát vọng của bộ tứ </b>(phát hành tháng 10.2021)</p>\\n<p style=\\"text-align: justify;\\">Tập 2: <b>Kế hoạch bị bại lộ (</b>phát hành tháng 11.2021<b>)</b></p>\\n<p style=\\"text-align: justify;\\">Tập 3:<b> &nbsp;Sân khấu trong mơ (</b>phát hành tháng 12.2021<b>)</b></p>\\n<p style=\\"text-align: justify;\\">Quà tặng kèm của báo dành cho bạn đọc là bộ bookmark siêu đẹp, chân dung của 4 nhân vật chính làm nên câu chuyện hấp dẫn này.</p>\\n<p style=\\"text-align: justify;\\">Câu chuyện xoay quanh 4 bạn trẻ tài năng Shine, Irene, Luna và Hayul. Mỗi nhân vật đều có một thế mạnh riêng nhưng tất cả đều có chung một niềm đam mê với âm nhạc. Bốn bạn gặp nhau trong cuộc thi âm nhạc K-pop. Để trở thành người chiến thắng, bộ tứ không ít lần xảy ra cãi vã, tranh chấp và thậm chí là “chơi xấu” nhau. Đến cuối cùng, họ đã nhận ra tình bạn chân thành và cùng nhau tỏa sáng trên sân khấu.</p>\\n<p style=\\"text-align: justify;\\">Vừa được đọc xong nội dung truyện, vừa được tham gia cuộc thi tương tác, viết và vẽ về ước mơ bản thân và nhận về nhiều phần thưởng giá trị là “quyền lợi” của bạn đọc khi sở hữu bộ <b>“Hoa Trạng Nguyên Comics Teen – Ước mơ vươn tới một ngôi sao” </b>đấy!</p>\\n<p style=\\"text-align: justify;\\"><img data-thumb=\\"original\\" original-height=\\"720\\" original-width=\\"1556\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/anh-poster-3-so.jpg?v=1634956199800\\" /></p>\\n<p style=\\"text-align: center;\\"><img src=\\"https://media.thieunien.vn/thumb/uploads/2021/10/18/a_40364.jpg\\" /></p>\\n<p>Ba mẹ có thể liên hệ&nbsp;với cô Tổng phụ trách tại trường&nbsp;của bé để đặt mua trọn bộ Hoa Trạng Nguyên Comics Teen hoặc tại các kênh online:</p>\\n<p><b><a href=\\"https://tanvietbooks.vn/tntp-nd\\">https://tanvietbooks.vn/tntp-nd</a></b></p>\\n<p><b><a href=\\"https://thieuniennhidong.utop.vn/\\">https://thieuniennhidong.utop.vn/</a></b></p>\\n<p><b><a href=\\"https://shopee.vn/thieunientp_nhidong2020\\">https://shopee.vn/thieunientp_nhidong2020</a></b></p>","template_layout":null,"summary":null,"tags":"","author":"Nguyễn Ly","image":{"id":30264976,"src":"https://bizweb.dktcdn.net/100/418/570/articles/anh-cover.jpg?v=1634958232277","alt":null,"extension":"jpg","name":"anh-cover.jpg","content_type":"image/jpeg","created_on":"2021-10-23T03:03:52Z","modified_on":"2021-10-23T03:03:52Z","size":518911,"width":1672,"height":1280},"alt_image":null},{"id":2392530,"blog_id":514916,"title":"Ngành xuất bản nên xây dựng nền tảng dùng chung","alias":"nganh-xuat-ban-nen-xay-dung-nen-tang-dung-chung","user_id":528034,"meta_title":"Ngành xuất bản nên xây dựng nền tảng dùng chung","meta_description":"\\"Phải thay đổi công nghệ nếu muốn tồn tại, ứng dụng công nghệ trên cơ sở dùng chung và chung tay phát triển văn hoá đọc\\", Thứ trưởng Bộ Thông tin và Truyền thông Phạm Anh Tuấn chia sẻ. Ngày 20/10, Bộ Thông tin và Truyền Thông tổ chức trực tuyến hội thảo “Trao đổi kinh nghiệm và định hướng phát triển bền vững lĩnh vực","created_on":"2021-10-21T09:35:19Z","modified_on":"2021-10-23T02:33:46Z","published_on":"2021-10-21T09:35:00Z","content":"<p style=\\"text-align: justify;\\"><strong><em>\\"Phải thay đổi công nghệ nếu muốn tồn tại, ứng dụng công nghệ trên cơ sở dùng chung và chung tay phát triển văn hoá đọc\\", Thứ trưởng Bộ Thông tin và Truyền thông Phạm Anh Tuấn chia sẻ.</em></strong></p>\\n<p style=\\"text-align: justify;\\">Ngày 20/10, Bộ Thông tin và Truyền Thông tổ chức trực tuyến hội thảo “Trao đổi kinh nghiệm và định hướng phát triển bền vững lĩnh vực Xuất bản, In và Phát hành trong điều kiện dịch Covid-19”. Hội thảo có sự tham gia của các đơn vị xuất bản, nhà sách trên cả nước.</p>\\n<p style=\\"text-align: center;\\"><img data-thumb=\\"original\\" original-height=\\"600\\" original-width=\\"900\\" src=\\"//bizweb.dktcdn.net/100/418/570/files/nganh-xuat-ban-nen-xay-dung-nen-tang-dung-chung.jpg?v=1634808886657\\" /></p>\\n<p style=\\"text-align: justify;\\">Chủ trì hội thảo, Thứ trưởng Bộ Thông tin và Truyền thông Phạm Anh Tuấn nhấn mạnh, hội thảo là dịp để các đơn vị xuất bản, các doanh nghiệp trao đổi với nhau những khó khăn gặp phải từ đó cần điều chỉnh chính sách pháp luật như thế nào cho phù hợp và cần sự hỗ trợ từ nhà nước như thế nào để ngành xuất bản tiếp tục phát triển. Ông Phạm Anh Tuấn cũng muốn nghe trực tiếp từ hội thảo này ý kiến của các đơn vị trong giai đoạn Covid-19 vừa qua đã thay đổi gì trong đơn vị mình, đem lại giá trị gì cho doanh nghiệp của mình,...</p>\\n<p><strong>Áp dụng công nghệ để giảm nhân công, tăng năng suất</strong></p>\\n<p>Báo cáo tại hội thảo, ông Nguyễn Nguyên – Cục trưởng Cục Xuất bản, In và Phát hành khẳng định năm 2020, trung bình toàn ngành có sự suy giảm tới 40%. Tuy nhiên, con số này không đánh giá sự suy giảm ngành một cách nguy hiểm. “Đây là xu hướng tiêu cực của ngành xuất bản trong toàn bộ khu vực chứ không riêng Việt Nam”, ông Nguyễn Nguyên nói.</p>\\n<p>Ông Nguyễn Nguyên cho rằng, sự đứt gãy nguồn nguyên liệu đầu vào – nguồn bản thảo là khó khăn đầu tiên mà ngành gặp phải. “Giấy in biến động, có loại tăng 60%. Các doanh nghiệp cố gắng duy trì sản xuất, điều này làm cho nguồn lực doanh nghiệp đẩy tới chân tường. Sức mua thị trường giảm dẫn tới thị trường bị thu hẹp. Xu hướng thế giới đi vào xuất bản điện tử - là lối thoát và cũng là xu hướng phát triển lâu dài\\", ông Nguyễn Nguyên chia sẻ.</p>\\n<p style=\\"text-align: justify;\\">Với lĩnh vực In, ông Nguyễn Văn Dòng - Chủ tịch Hiệp hội In Việt Nam cho biết, 2/3 doanh nghiệp ngành In thuộc nơi bị ảnh hưởng nặng nề từ Covid-19 bao gồm TP.HCM, Bình Dương, Đồng Nai cho nên ngành này thực sự khó khăn chồng chất khó khăn.</p>\\n<p style=\\"text-align: justify;\\">“80% doanh nghiệp In giảm doanh thu, 83% doanh nghiệp In giảm lợi nhuận, thiếu thợ chính, không đủ thợ bảo trì, thiếu nguồn cung ứng, 28% đơn vị phải ngưng sản xuất 3 tại chỗ, 75% doanh nghiệp ngành In tỏ ra bi quan, số còn lại hy vọng sản xuất kinh doanh được phục hồi. Hiện nay, mối lo ngại lớn nhất là sự đứt gãy chuỗi khách hàng, khả năng sớm phục hồi khá thấp, 15% khách hàng nước ngoài ngừng đơn hàng tại Việt Nam và chuyển sang các đơn vị khác trong khu vực. Cho nên, việc nối lại chuỗi khách hàng này sẽ rất khó khăn. Ít việc, số lao động rời ngành In gia tăng hàng ngày”, ông Nguyễn Văn Dòng nêu khó khăn.</p>\\n<p style=\\"text-align: justify;\\">Chủ tịch Hiệp hội In Việt Nam kiến nghị: “Chính phủ nên có các biện pháp phù hợp, tránh nhiêu khê các thủ tục, đáp ứng tiêm vắc-xin cho doanh nghiệp, miễn giảm 30% thuế thu nhập, giảm 30% thuế giá trị gia tăng, không tiến hành những cuộc kiểm tra liên ngành các thủ tục hành chính đối với doanh nghiệp để doanh nghiệp tập trung sản xuất”.</p>\\n<p style=\\"text-align: justify;\\">Thứ trưởng Bộ Thông tin và Truyền thông Phạm Anh Tuấn cho rằng, không riêng gì ngành In mà các ngành khác nguyên liệu đầu vào cũng sẽ tăng, vì vậy muốn phát triển, ngành In bắt buộc phải áp dụng công nghệ để không quá phụ thuộc vào lao động phổ thông.</p>\\n<p style=\\"text-align: justify;\\">Ông Đỗ Quang Hưng, đại diện Công ty giải pháp Minh Đức, đơn vị chuyên cung cấp thiết bị về ngành In chia sẻ, công ty mình có nhiều giải pháp để tích hợp các công nghệ, giảm nhân lực, tăng năng xuất lao động. Nhất là trong thời điểm Covid-19 này nhân công cho ngành In đang khó khăn nên phía đơn vị này đề xuất các đơn vị nên có chủ trương định hướng cụ thể tìm hiểu nhu cầu của doanh nghiệp để kết hợp các giải pháp có lợi.&nbsp;</p>\\n<p style=\\"text-align: justify;\\">Về phía đơn vị phát hành, đại diện Fahasa cho biết, từ tháng 6-9 là thời điểm kinh doanh cao điểm của đơn vị này và nó mang lại doanh thu cao. Nhưng do dịch rơi vào đúng dịp này nên ảnh hưởng nặng, gặp nhiều khó khăn. Thời gian này, Fahasa chỉ tập trung kinh doanh trên điện tử và chủ yếu sách giáo khoa cho học sinh - mà mảng này chỉ là mảng nhỏ trong lĩnh vực kinh doanh của Fahasa. Thêm vào đó, dịch bệnh khiến đơn hàng cũng dồn ứ nhiều, không hiệu quả.</p>\\n<p style=\\"text-align: justify;\\">Bà Nguyễn Kim Thoa - CEO Tân Việt Books cho biết, đợt dịch vừa qua, các nhà sách, hệ thống xuất bản của Tân Việt phải dừng. Chưa bao giờ đơn vị phải nợ tiền thuê nhà nhưng hiện nay đã phải xin khất chủ cho thuê. Dù chính phủ có nhiều gói hỗ trợ doanh nghiệp nhưng bà Nguyễn Kim Thoa chưa thấy có văn bản nào giảm thuế cho doanh nghiệp, triển khai chính sách hỗ trợ tới đơn vị mình.</p>\\n<p style=\\"text-align: justify;\\">Tuy nhiên, để tự cứu lấy mình vượt qua đại dịch, Tân Việt Books đã triển khai kênh bán hàng online, xác định đầu tư vào công nghệ để có thể phát triển lâu dài trong điều kiện mới. Bà Kim Thoa khẳng định: “Xuất bản là đầu vào, phát hành là đầu ra, sách là hàng hoá của trí tuệ, tri thức nên phải giải quyết bài toán đầu ra hợp lý”.</p>\\n<p style=\\"text-align: justify;\\">Chia sẻ về kinh nghiệm của đơn vị mình trong thời gian qua, bà Kim Thoa cho biết, thời gian được ở nhà nhiều nên bà đã xây dựng chương trình “Chung tay lan toả văn hoá đọc cộng đồng”, số đầu tiên livetream trên trang cá nhân của Tân Việt Books là kiến thức chọn sách, giới thiệu những đầu sách hay, đặc biệt là sách cho các em nhỏ.</p>\\n<p style=\\"text-align: justify;\\">“Với kinh nghiệm của mình, chúng tôi mong muốn những gì biết được sẽ được lan toả tới cộng đồng. Nếu không có dịch, có lẽ chúng tôi đã khánh thành không gian văn hoá đọc cộng đồng đầu tiên. Đây là không gian mà chúng tôi lên ý tưởng từ việc kết hợp nhà văn hoá cũ, đầu tư tủ sách vào để trở thành không gian văn góp phần nâng cao dân trí đọc trong cộng đồng. Thêm vào đó, tôi cũng đã sáng tác được mấy bài hát về sách để bằng âm nhạc, lan toả tình yêu sách tới được nhiều người hơn”, bà Kim Thoa chia sẻ.</p>\\n<p style=\\"text-align: justify;\\">Đại diện Fahasa và Tân Việt Books đồng kiến nghị, phải xem sách là mặt hàng thiết yếu trong bất cứ hoàn cảnh nào chứ không chỉ mỗi sách giáo. “Trên truyền hình rất nhiều chương trình giải trí nhiều nhưng về sách chưa có, ngoại trừ trước kia có chuyên mục&nbsp;<em>Mỗi ngày một cuốn sách</em>&nbsp;trên VTV1. Tôi đề nghị có nhiều chương trình giới thiệu sách sâu hơn nữa”, bà Thoa kiến nghị thêm.</p>\\n<p style=\\"text-align: justify;\\"><strong>Xây dựng nền tảng dùng chung</strong></p>\\n<p style=\\"text-align: justify;\\">Sau khi nghe ý kiến từ các đơn vị xuất bản, Thứ trưởng Bộ Thông tin và Truyền thông đồng cảm và chia sẻ sự khó khăn vất vả của các đơn vị xuất bản, phát hành.</p>\\n<p style=\\"text-align: justify;\\">\\"Kể cả khi chưa có dịch Covid-19, ngành xuất bản cũng đã khó khăn. Tôi đề nghị Cục Xuất bản, các đơn vị phát hành làm việc nghiêm túc, nghiên cứu nghiêm túc chính sách của nhà nước và những vướng mắc từ đó đề xuất kiến nghị chính quyền địa phương, cơ quan chủ quản. Ngành xuất bản cần căn cơ, đi vào phần ngọn, không đi vào phần gốc coi bạn đọc là thị trường để đẩy mạnh văn hoá đọc. Văn hoá đọc tốt lên thì mới có thị trường, phát hành được sách. Phải nâng cao chất lượng sách, tìm hiểu cuốn sách giá trị để giới thiệu với bạn đọc\\", Thứ trưởng Phạm Anh Tuấn nhấn mạnh.&nbsp;&nbsp;</p>\\n<p style=\\"text-align: justify;\\">Qua đại dịch, nếu đơn vị nào biết áp dụng công nghệ thì giá thành hạ. \\"Phải thay đổi công nghệ nếu muốn tồn tại, ứng dụng công nghệ trên cơ sở dùng chung và chung tay phát triển văn hóa đọc. Đối với đơn vị truyền thông nên có mục giới thiệu các cuốn sách hay và viết về nhân vật thành công nhờ đọc sách từ đó lan toả được văn hoá đọc tới cộng đồng\\",&nbsp;Thứ trưởng Phạm Anh Tuấn chỉ đạo tại hội nghị.</p>\\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </strong><em>&nbsp;theo Tình Lê - Vietnamnet</em></p>","template_layout":null,"summary":null,"tags":"","author":"Nguyễn Ly","image":{"id":30258229,"src":"https://bizweb.dktcdn.net/100/418/570/articles/nganh-xuat-ban-nen-xay-dung-nen-tang-dung-chung.jpg?v=1634808920217","alt":null,"extension":"jpg","name":"nganh-xuat-ban-nen-xay-dung-nen-tang-dung-chung.jpg","content_type":"image/jpeg","created_on":"2021-10-21T09:35:20Z","modified_on":"2021-10-21T09:35:20Z","size":188784,"width":900,"height":600},"alt_image":null}]}';
}