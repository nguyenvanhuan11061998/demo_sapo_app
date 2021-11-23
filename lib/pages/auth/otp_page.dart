import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  static const String path = "OtpPage";
  String numPhone;

  OtpPage({required this.numPhone, Key? key}) : super(key: key);

  @override
  OtpPageState createState() => OtpPageState();
}

class OtpPageState extends State<OtpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Nhập mã OTP'),
        backgroundColor: Color(0xffd10000),
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
                Image.asset('assets/images/image_logo.png',
                    width: 85, height: 85),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Mã OTP được gửi về số điện thoại ',
                        style: Theme.of(context).textTheme.bodyText2),
                    InkWell(
                      child: Text(widget.numPhone,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: const Color(0xffd10000))),
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(height: 40),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                      fieldHeight: 66,
                      fieldWidth: 66,
                      shape: PinCodeFieldShape.box,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderWidth: 1,
                      selectedColor: const Color(0xffD10000),
                      activeColor: const Color(0xffD10000),
                      inactiveColor: const Color(0xffE0E0E0)),
                  cursorColor: const Color(0xffD10000),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                    FilteringTextInputFormatter.deny(' '),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bạn không nhận được mã? ', style: Theme.of(context).textTheme.bodyText2),
                    InkWell(child: Text('Gửi lại', style: Theme.of(context).textTheme.bodyText2?.copyWith(color: const Color(0xffD10000)))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
