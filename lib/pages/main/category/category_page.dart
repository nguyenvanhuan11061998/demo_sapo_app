import 'package:demo_sapo_app/data/repository/category_repository_impl.dart';
import 'package:demo_sapo_app/domain/model/category_model.dart';
import 'package:demo_sapo_app/domain/repository/category_repository.dart';
import 'package:demo_sapo_app/widgets/category_item_widget.dart';
import 'package:demo_sapo_app/widgets/category_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CategoryPage extends StatefulWidget {
  @override
  CategoryPageState createState() {
    return CategoryPageState();
  }
}

class CategoryPageState extends State<CategoryPage> {
  List<CategoryModel> categories = [];
  int indexSelected = 0;

  @override
  void initState() {
    super.initState();
    GetIt.instance.get<CategoryRepositoryImpl>().getCategories().then((value) {
      setState(() {
        categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffd10000),
          title: Text('Danh mục'),
          centerTitle: false,
        ),
        body: categories.isEmpty
            ? Container()
            : Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        categories.length,
                            (index) =>
                            CategoryWidget(
                              categoryModel: categories[index],
                              isSelected: indexSelected == index,
                              onPress: () {
                                setState(() {
                                  indexSelected = index;
                                });
                              },
                            )).toList(),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Expanded(child: ListView.separated(
                itemCount: categories[indexSelected].categories?.length ?? 0,
                itemBuilder: (context, index) {
                  return (categories[indexSelected].categories == null ||
                      categories[indexSelected].categories!.isEmpty)
                      ? Container()
                      : CategoryItemWidget(
                      categoryModel: categories[indexSelected].categories![index],
                    key: ValueKey( categories[indexSelected].categories![index].id),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ))
            ],
          ),
        ));
  }
}
