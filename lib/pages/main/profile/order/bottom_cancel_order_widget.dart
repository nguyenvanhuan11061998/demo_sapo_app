import 'package:demo_sapo_app/data/repository/order_repository_imp.dart';
import 'package:demo_sapo_app/widgets/design_system/app_button_border_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BottomCancelOrderWidget extends StatefulWidget {
  VoidCallback cancelSuccess;
  int idProduct;

  BottomCancelOrderWidget(
      {required this.idProduct, required this.cancelSuccess, Key? key})
      : super(key: key);

  @override
  _BottomCancelOrderWidgetState createState() =>
      _BottomCancelOrderWidgetState();
}

class _BottomCancelOrderWidgetState extends State<BottomCancelOrderWidget> {
  List<String> reasons = [
    'Muốn thay đổi địa chỉ giao hàng',
    'Thời gian giao hàng quá lâu',
    'Đổi ý không muốn mua nữa',
    'Khác'
  ];
  late String _selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected = reasons[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Text('Chọn lý do',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16),
                textAlign: TextAlign.center),
          ),
          SizedBox(height: 10),
          ...List.generate(
              reasons.length,
              (index) => ListTile(
                    // padding của listTile
                    // contentPadding: EdgeInsets.only(left: 10),
                    title: Text(reasons[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 13)),
                    // khoảng cách horizontal của title, mặc định là 16
                    horizontalTitleGap: 0,
                    // radio sẽ check giá trị value so sánh vs groupValue tự động tick or not

                    leading: Radio<String>(
                      value: reasons[index],
                      groupValue: _selected,
                      // call khi selected radio
                      onChanged: (String? reason) {
                        setState(() {
                          _selected = reason!;
                        });
                      },
                      // hoverColor: Color(0xffd10000),
                      fillColor: MaterialStateProperty.all(Color(0xffd10000)),
                    ),
                  )).toList(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppButtonBoderWidget(
              title: 'Xác nhận',
              backgroundColor: Color(0xffd10000),
              borderColor: Color(0xffd10000),
              disableColor: Color(0xffd10000),
              textColor: Colors.white,
              onPressed: () {
                GetIt.instance.get<OrderRepositoryImpl>().cancelOrder(widget.idProduct).then((isCancelSuccess) {
                  if (isCancelSuccess) {
                    widget.cancelSuccess();
                    Navigator.pop(context);
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
