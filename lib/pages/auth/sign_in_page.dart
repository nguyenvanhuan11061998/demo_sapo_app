import 'package:demo_sapo_app/pages/auth/forgot_password.dart';
import 'package:demo_sapo_app/pages/auth/sign_up_page.dart';
import 'package:demo_sapo_app/pages/main/main_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInPage extends StatefulWidget {
  static const path = 'SignInPage';

  const SignInPage({Key? key}) : super(key: key);

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  bool myAutoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // LayoutBuilder layout phụ thuộc vào kích thước của layout cha, thường được dùng với boxConstrains để lấy kích thước từ constrains trong builder
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Form(
              key: _formKey,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: SingleChildScrollView(
                  // ConstrainedBox : giống container, tuy nhiên có thể set linh hoạt hơn với maxWidth, minHeight, minWidth, maxHeight, có thể set width, height,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                          minHeight: constraints.maxHeight,
                        ),
                        //IntrinsicHeight : ràng buộc kích thước của widget con trong nó bằng với kích thước hiện tại đang có, sử dụng khi có bàn phím xuất hiện
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 50),
                              Image.asset('assets/images/image_logo.png'),
                              const SizedBox(height: 50),
                              Text('Đăng nhâp',
                                  style: Theme.of(context).textTheme.headline6),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: _userController,
                                decoration: const InputDecoration(
                                  labelText: 'Số điện thoại',
                                  labelStyle:
                                      TextStyle(color: Color(0xffc2c2c2)),
                                  hintText: 'Số điện thoại',
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffd10000), width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffc2c2c2), width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                  FilteringTextInputFormatter.deny(' '),
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]'))
                                ],
                                autovalidateMode: myAutoValidate
                                    ? AutovalidateMode.onUserInteraction
                                    : AutovalidateMode.disabled,
                                validator: (value) {
                                  if (_userController.text.trim().isEmpty) {
                                    return 'Yêu cầu nhập số điện thoại';
                                  } else if (!validatePhone(
                                      _userController.text.trim())) {
                                    return 'Số điện thoại không hợp lệ';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: _passController,
                                decoration: const InputDecoration(
                                  labelText: 'Mật khẩu',
                                  labelStyle:
                                      TextStyle(color: Color(0xffc2c2c2)),
                                  hintText: 'Mật khẩu',
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffd10000), width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffc2c2c2), width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                ),
                                obscureText: true,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(' '),
                                ],
                                autovalidateMode: myAutoValidate
                                    ? AutovalidateMode.onUserInteraction
                                    : AutovalidateMode.disabled,
                                validator: (value) {
                                  if (_passController.text.trim().isEmpty) {
                                    return 'Yêu cầu nhập mật khẩu';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 40),
                              ElevatedButton(
                                onPressed: () {
                                  if (myAutoValidate == false) {
                                    setState(() {
                                      myAutoValidate = true;
                                    });
                                    if (_formKey.currentState!.validate()) {
                                      onMainScreen();
                                    }
                                  }
                                },
                                child: const Text('Đăng nhập'),
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    )),
                                    primary: const Color(0xffd10000),
                                    minimumSize: const Size(double.infinity, 56)),
                              ),
                              const SizedBox(height: 20),
                              InkWell(
                                child: Text(
                                  'Quên mật khẩu',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                      color: const Color(0xff0063f7),
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline),
                                ),
                                onTap: () {
                                  openScreenForgotPassword();
                                },
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Bạn chưa có tài khoản? ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, SignUpPage.path);
                                    },
                                    child: Text(
                                      'Đăng ký',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(color: const Color(0xffd10000)),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))),
              ),
            );
          },
        ));
  }

  bool validatePhone(String phone) {
    // check xem số điện thoại có đúng định dạng  như trong string không
    return RegExp(r'^(\+84|0)[0-9]{9,10}$').hasMatch(phone);
  }

  void openScreenForgotPassword() {
    Navigator.pushNamed(context, ForgotPassword.path);
  }

  void onMainScreen() {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MainNavigator()));
  }
}
