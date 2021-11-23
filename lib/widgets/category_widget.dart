import 'package:demo_sapo_app/domain/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryModel categoryModel;
  bool isSelected;
  VoidCallback onPress;

  CategoryWidget(
      {required this.categoryModel,
      required this.isSelected,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? Colors.white : Color(0xfff6f6f6),
      child: InkWell(
        onTap: () {
          onPress();
        },
        child: SizedBox(
          width: 100,
          height: 64,
          child: Row(
            children: [
              Container(
                width: 4,
                color: isSelected
                    ? const Color(0xffd10000)
                    : const Color(0xfff6f6f6),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Text(
                  categoryModel.name ?? "",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: isSelected
                          ? const Color(0xffd10000)
                          : const Color(0xff757575)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
