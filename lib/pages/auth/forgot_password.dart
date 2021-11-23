import 'package:demo_sapo_app/pages/auth/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const String path = "ForgotPassword";

  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _controller = TextEditingController();
  bool isActiveBtn = false;
  bool isValidateData = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isActiveBtn = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Quên mật khẩu'),
        backgroundColor: const Color(0xffd10000),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Image.asset('assets/images/image_logo.png'),
                const SizedBox(height: 30),
                Text(
                  'Nhập số điện thoại mà bạn đã đăng ký tài khoản để lấy lại mật khẩu.',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: const Color(0xff757575)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'Số điện thoại',
                    labelStyle: TextStyle(color: Color(0xff757575)),
                    hintText: 'Số điện thoại',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xffc2c2c2))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xffd10000))),
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.deny(' ')
                  ],
                  autovalidateMode: isValidateData
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  validator: (value) {
                    if (_controller.text
                        .trim()
                        .isEmpty) {
                      return 'Vui lòng nhập số điện thoại';
                    } else if (!validatePhone(_controller.text.trim())) {
                      return 'Số điện thoại không đúng định dạng';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: isActiveBtn
                      ? () {
                    if (isValidateData == false) {
                      setState(() {
                        isValidateData = true;
                      });
                    }
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, OtpPage.path, arguments: {
                        'numPhone' : _controller.text.trim()
                      });
                    }
                  }
                      : null,
                  child: const Text('Tiếp tục',
                      style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffd10000),
                      minimumSize: const Size(double.infinity, 50),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validatePhone(String phone) {
    return RegExp(r'^(\+84|0)[0-9]{9,10}$').hasMatch(phone);
  }
}
