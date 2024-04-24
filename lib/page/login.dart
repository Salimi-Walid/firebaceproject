import 'package:firebaceproject/class/textfield.dart';
import 'package:firebaceproject/page/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAA84CCF4),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/ecig.png'),
            const Textfiel(
              Ispassword: false,
              TextInputType1: TextInputType.emailAddress,
              hinttext: 'Email',
            ),
            const Textfiel(
              Ispassword: true,
              TextInputType1: TextInputType.visiblePassword,
              hinttext: 'Password',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I dont have accont',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signup(),
                        )),
                    child: const Text('Signe-up')),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 250,
                height: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 252, 251, 249)),
                child: const Center(
                  child: Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
