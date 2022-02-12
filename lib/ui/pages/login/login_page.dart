import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/style/my_input_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mid = MyInputDecs();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool isCheked = false;
    return Scaffold(
      appBar: DefaultAppBar(
          titleText: 'Registration', back: const HomePage(), appBar: AppBar()),
      body: SingleChildScrollView(
        child: Container(
          padding: context.eiAll(10),
          child: Container(
            width: _size.width,
            padding: context.eiSym(h: 25, v: 50),
            decoration: MyBoxDecs().registerPage(),
            child: Column(
              children: [
                Container(
                  padding: context.eiAll(5),
                  decoration: MyBoxDecs().registerPage2(),
                  child: FittedBox(
                      child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: _size.width / 3,
                  )),
                ),
                const SizedBox(height: 25),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                        maxLength: 8,
                        keyboardType: TextInputType.number,
                        decoration: mid.telephone()),
                    const SizedBox(height: 25),
                    TextFormField(
                        obscureText: true,
                        decoration: mid.password()),
                    Container(
                      margin: context.eiSym(h: 0, v: 10),
                      child: Text('Forgot password?',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Palette.kSoftGreen)),
                    )
                  ],
                )),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Checkbox(
                        value: isCheked,
                        onChanged: (value) =>
                            setState(() => isCheked = value!)),
                    const Text('Lorem ipsum dolor sit amet asq qwert')
                  ],
                ),
                const SizedBox(height: 25),
                CustomButton(
                    title: 'Login', color: Palette.kSoftGreen, onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
