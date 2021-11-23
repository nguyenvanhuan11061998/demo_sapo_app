import 'package:demo_sapo_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

/**
 * custom search view from form field
 */
class SearchFormField extends FormField<String> {
  final TextEditingController? textEditingController;

  SearchFormField({String? value,
    Key? key,
    String? hint,
    int? maxLines = 1,
    int? maxLength = 1000,
    FormFieldSetter<String>? onSaved,
    TextInputType keyboardType = TextInputType.text,
    this.textEditingController,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    VoidCallback? onCancel,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? textInputFormatter,
    Color? backgroundColor,
    Color? borderColor,
    Color? hintColor,
    Color? textColor,
    Color? iconColor,
    bool? readOnly,
    Widget? suffixIcon})
      : super(
      key: key,
      onSaved: onSaved,
      validator: validator,
      builder: (field) {
        final state = field as SearchFormFieldState;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoTextField(
              // tự động forcus vào view khi vào màn
              autofocus: false,
              readOnly: readOnly ?? false,
              controller: state.textEditingController,
              padding: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: 16),
              maxLines: maxLines,
              placeholder: hint,
              onChanged: (value) {
                if (onChanged != null) {
                  onChanged(value);
                }
                field.didChange(value);
              },
              // khi nhập xong text sẽ tự động bỏ focus
              onEditingComplete: () {
                FocusScope.of(field.context).unfocus();
                if (onEditingComplete != null) {
                  onEditingComplete();
                }
              },
              decoration: BoxDecoration(
                  color: backgroundColor ?? Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              style: Theme
                  .of(field.context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(),
              keyboardType: keyboardType,
              inputFormatters: textInputFormatter,
              // widget sẽ hiển thị trước box nhập text
              prefix: InkResponse(
                onTap: () {
                  FocusScope.of(field.context).unfocus();
                  if (onEditingComplete != null) {
                    onEditingComplete();
                  }
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SvgPicture.asset(
                    Assets.icons.icSearch,
                    width: 16, height: 16,
                    color: iconColor ??
                        (state.textEditingController.text.isNotEmpty ? Color(
                            0xffd10000) : Color(0xffa8a8a8)),
                  ),
                ),
              ),
              // icon phía sau box nhập text
              suffix: Padding(
                padding: EdgeInsets.only(right: 6),
                child: suffixIcon ??
                    (state.textEditingController.text.isNotEmpty ? InkResponse(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.clear,
                            color: iconColor ?? const Color(0xffc4c4c4)),
                      ),
                      onTap: () {
                        state.setState(() {
                          state.textEditingController.clear();
                        });
                        if (onCancel != null) {
                          onCancel();
                        }
                      },
                    ) : null),
              ),
            ),
          ],
        );
      });
}

class SearchFormFieldState extends FormFieldState<String> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = (widget as SearchFormField).textEditingController ??
        TextEditingController(text: widget.initialValue);
  }
}
