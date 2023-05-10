import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sabak10_and_for_loop/home/user_page.dart';
import 'package:sabak10_and_for_loop/model.dart';

List<Student> Studentter = [aybek, chasan, umar, fatima, jazgul];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          'LoginPage'.toUpperCase(),
          style: const TextStyle(
            fontSize: 30,
            color: Colors.purple,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://avatars.mds.yandex.net/i?id=a45b1e9c813a7558be1c9cbc357ddcf1ce265f91-8193383-images-thumbs&n=13'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 3.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.0),
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FlutterLogo(
                        size: 80,
                      ),
                      Text(
                        'Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color.fromARGB(255, 76, 114, 175),
                        ),
                      )
                    ],
                  ),
                  const Center(
                    child: Text(
                      'Welcom To Saifty!',
                      style: TextStyle(
                        color: Color.fromARGB(255, 13, 166, 237),
                        fontSize: 40,
                      ),
                    ),
                  ),
                  const Text(
                    'Please Log into your existing accaunt!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 19, 166, 215), fontSize: 20),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        debugPrint(value);
                        var istrue = false;
                        for (var studen in Studentter) {
                          if (value == studen.name) {
                            istrue = true;
                          }
                        }
                        return istrue ? null : "Сиздин атыныз туура эмес";
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Name'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        debugPrint(value);
                        var istrue = false;
                        for (var studen in Studentter) {
                          if (value == studen.email) {
                            istrue = true;
                          }
                        }
                        return istrue ? null : "Сиздин почтаныз туура эмес";
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Gmail'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        debugPrint(value);
                        bool istrue = false;
                        for (var studen in Studentter) {
                          if (value == studen.password) {
                            istrue = true;
                          }
                        }
                        return istrue ? null : "Сиздин пароль туура эмес";
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 40)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserPage(
                              email: _emailController.text,
                              name: _nameController.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text('Login'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
