import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  static const String path = 'SignUpPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  bool isValidateData = false;

  bool _obscurePass = true;
  bool _obscureConfirmPass = true;

  bool accept = false;
  bool isTextFormNotEmpty = false;

  @override
  void initState() {
    super.initState();

    _nameController.addListener(() {
      checkTextEmpty();
    });
    _phoneController.addListener(() {
      checkTextEmpty();
    });
    _passController.addListener(() {
      checkTextEmpty();
    });
    _confirmPassController.addListener(() {
      checkTextEmpty();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Đăng ký'),
        backgroundColor: Color(0xffd10000),
      ),
      body: LayoutBuilder(
        builder: (context, constrains) {
          return Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: constrains.maxWidth,
                      minHeight: constrains.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              labelText: 'Họ và tên',
                              labelStyle: TextStyle(color: Color(0xffc2c2c2)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffc2c2c2))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffd10000))),
                            ),
                            autovalidateMode: isValidateData
                                ? AutovalidateMode.onUserInteraction
                                : AutovalidateMode.disabled,
                            validator: (value) {
                              if (_nameController.text.trim().isEmpty) {
                                return 'Vui lòng nhập họ tên.';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _phoneController,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: Color(0xffc2c2c2)),
                              labelText: 'Số điện thoại',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xffc2c2c2)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Color(0xffd10000)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            autovalidateMode: isValidateData
                                ? AutovalidateMode.onUserInteraction
                                : AutovalidateMode.disabled,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.deny(' '),
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'))
                            ],
                            validator: (value) {
                              if (_phoneController.text.trim().isEmpty) {
                                return 'Vui lòng nhập số điện thoại';
                              } else if (!validatePhone(
                                  _phoneController.text.trim())) {
                                return 'Số điện thoại không đúng định dạng';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _passController,
                            obscureText: _obscurePass,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(' ')
                            ],
                            decoration: InputDecoration(
                                labelText: 'Mật khẩu',
                                labelStyle:
                                    const TextStyle(color: Color(0xffc2c2c2)),
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffc2c2c2)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xffd10000)),
                                ),
                                suffixIcon: InkResponse(
                                  child: Icon(
                                    _obscurePass
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color(0xffc4c4c4),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _obscurePass = !_obscurePass;
                                    });
                                  },
                                )),
                            autovalidateMode: isValidateData
                                ? AutovalidateMode.onUserInteraction
                                : AutovalidateMode.disabled,
                            validator: (value) {
                              if (_passController.text.trim().isEmpty) {
                                return 'Vui lòng nhập mật khẩu.';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _confirmPassController,
                            obscureText: _obscureConfirmPass,
                            decoration: InputDecoration(
                                labelText: 'Nhập lại mật khẩu',
                                labelStyle:
                                    const TextStyle(color: Color(0xffc2c2c2)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffc2c2c2)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Color(0xffd10000)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                suffixIcon: InkResponse(
                                  child: Icon(
                                    _obscureConfirmPass
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color(0xffc4c4c4),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _obscureConfirmPass =
                                          !_obscureConfirmPass;
                                    });
                                  },
                                )),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(' ')
                            ],
                            autovalidateMode: isValidateData
                                ? AutovalidateMode.onUserInteraction
                                : AutovalidateMode.disabled,
                            validator: (value) {
                              if (_confirmPassController.text.isEmpty) {
                                return 'Vui lòng nhập mật khẩu xác nhận.';
                              } else if (_passController.text
                                      .trim()
                                      .isNotEmpty &&
                                  (_passController.text.trim() ==
                                      _passController.text.trim())) {
                                return 'Mật khẩu xác thực không chính xác';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffa8a8a8),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: accept,
                                  onChanged: (value) {
                                    setState(() {
                                      accept = !accept;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  checkColor: const Color(0xffd10000),
                                  side: const BorderSide(
                                      color: Colors.transparent),
                                  visualDensity:
                                      const VisualDensity(horizontal: -4),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: RichText(
                                      text: TextSpan(children: [
                                TextSpan(
                                    text: 'Tôi đồng ý với các ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: const Color(0xff757575))),
                                TextSpan(
                                    text: 'Điều khoản sử dụng ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                          color: const Color(0xffd10000),
                                        ),
                                    recognizer: new TapGestureRecognizer()
                                      ..onTap = () {}),
                                TextSpan(
                                    text: 'của nhà sách Tân Việt.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: const Color(0xff757575))),
                              ]))),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: (isTextFormNotEmpty && accept)
                                ? () {
                                    if (!isValidateData) {
                                      setState(() {
                                        isValidateData = true;
                                      });
                                    }
                                    if (_formKey.currentState!.validate()) {}
                                  }
                                : null,
                            child: Text(
                              'Đăng ký',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xffd10000),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                minimumSize: const Size(double.infinity, 50),
                                elevation: 0),
                          ),
                          Expanded(
                              child: RichText(
                                  text: TextSpan(children: [
                            TextSpan(
                              text: 'Bạn đã có tài khoản? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: const Color(0xff757575)),
                            ),
                            TextSpan(
                                text: 'Đăng nhập',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: const Color(0xffd10000)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                  })
                          ])))
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }

  bool validatePhone(String phone) {
    // check xem số điện thoại có đúng định dạng  như trong string không
    return RegExp(r'^(\+84|0)[0-9]{9,10}$').hasMatch(phone);
  }

  void checkTextEmpty() {
    if (_nameController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _passController.text.isNotEmpty &&
        _confirmPassController.text.isNotEmpty) {
      setState(() {
        isTextFormNotEmpty = true;
      });
    } else {
      setState(() {
        isTextFormNotEmpty = false;
      });
    }
  }
}
