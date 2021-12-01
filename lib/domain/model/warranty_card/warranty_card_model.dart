



import 'item_model.dart';

abstract class WarrantyCardModel{
  int get id;
  int get tenant_id;
  int get order_id;
  String get code;
  ItemModel get item;
  String? get note;
  String get status;
}