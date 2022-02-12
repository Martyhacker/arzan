import 'package:arzan/core/constants/palette.dart';
import 'package:arzan/core/style/my_box_decorations.dart';
import 'package:arzan/core/style/my_input_decorations.dart';
import 'package:arzan/core/style/my_paddings_margins.dart';
import 'package:arzan/core/utils/drawer_controller.dart';
import 'package:arzan/core/utils/my_router.dart';
import 'package:arzan/core/widgets/custom_button.dart';
import 'package:arzan/core/widgets/default_app_bar.dart';
import 'package:arzan/core/widgets/my_drawer.dart';
import 'package:arzan/ui/pages/home/home_page.dart';
import 'package:arzan/ui/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final mid = MyInputDecs();
  final mbd = MyBoxDecs();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      appBar: DefaultAppBar(
          titleText: 'Registration', back: const HomePage(), appBar: AppBar()),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: context.eiAll(10),
          child: Container(
            width: _size.width,
            padding: context.eiSym(h: 25, v: 50),
            decoration: mbd.registerPage(),
            child: Column(
              children: [
                Container(
                  padding: context.eiAll(5),
                  decoration: mbd.registerPage2(),
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
                    TextFormField(decoration: mid.username()),
                    const SizedBox(height: 20),
                    TextFormField(
                        maxLength: 8,
                        keyboardType: TextInputType.number,
                        decoration: mid.telephone()),
                    const SizedBox(height: 20),
                    TextFormField(
                        obscureText: true, decoration: mid.password()),
                    const SizedBox(height: 20),
                    TextFormField(
                        obscureText: true, decoration: mid.confirmPassword()),
                  ],
                )),
                const SizedBox(height: 25),
                CustomButton(
                    title: 'Register', color: Palette.kSoftGreen, onTap: () {}),
                InkWell(
                  onTap: () => MyRouter().change(context, const LoginPage()),
                  child: Container(
                    margin: context.eiSym(h: 0, v: 10),
                    child: Text('Don\'t have an account?',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Palette.kSoftGreen)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
