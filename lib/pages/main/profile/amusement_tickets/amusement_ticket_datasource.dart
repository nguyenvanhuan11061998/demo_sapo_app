
import 'package:demo_sapo_app/data/repository/auth_repository.dart';
import 'package:demo_sapo_app/domain/model/warranty_card/warranty_card_model.dart';
import 'package:fl_paging/fl_paging.dart' as paging;
import 'package:get_it/get_it.dart';
import 'package:tuple/tuple.dart';


/**
 * data cấu hình paging
 * WarrantyCardModel: item của list data
 */
class AmusementTicketDatasource extends paging.PageKeyedDataSource<int, WarrantyCardModel> {
  AuthRepository authRepository = GetIt.instance.get();

  AmusementTicketDatasource(this.authRepository) : super(pageSize: 10);

  /**
   * load data lần đầu
   */
  @override
  Future<Tuple2<List<WarrantyCardModel>, int>> loadInitial(int pageSize) async {
    List<WarrantyCardModel> data = await authRepository.getWarrantyCard(page: 1);
    return Tuple2(data, 2);
  }


  /**
   * load data các lần tiếp theo
   */
  @override
  Future<Tuple2<List<WarrantyCardModel>, int>> loadPageAfter(int params, int pageSize) async {
    List<WarrantyCardModel> data = await authRepository.getWarrantyCard(page: params);
    return Tuple2(data, params + 1);
  }

}
