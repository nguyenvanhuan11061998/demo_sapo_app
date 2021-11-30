import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'item_comment_widget.dart';

class BlogsBottomSheetWidget extends StatefulWidget {
  int id;
  int bloc_id;

  BlogsBottomSheetWidget({required this.id, required this.bloc_id, Key? key})
      : super(key: key);

  @override
  _BlogsBottomSheetWidgetState createState() => _BlogsBottomSheetWidgetState();
}

class _BlogsBottomSheetWidgetState extends State<BlogsBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 24)),
                SizedBox(width: 20),
                Text('Bình luận',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ItemCommentWidget();
                },
                separatorBuilder: (context, index) {
                  return Container(height: 10);
                },
                itemCount: 10),
          )),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.black,
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 25),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 12, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Thêm bình luận',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 12, color: Color(0xff7b7b7b)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff7b7b7b)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff7b7b7b)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff7b7b7b)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff7b7b7b)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff7b7b7b)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                InkWell(
                    onTap: () {

                    },
                    child: SvgPicture.asset(Assets.icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
