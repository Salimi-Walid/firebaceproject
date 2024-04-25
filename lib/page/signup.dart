import 'package:firebaceproject/class/textfield.dart';
import 'package:firebaceproject/page/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAA84CCF4),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Sign-up',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/ecig.png'),
              Textfiel(
                controler: emailcontroller,
                Ispassword: false,
                TextInputType1: TextInputType.emailAddress,
                hinttext: 'Email',
              ),
              Textfiel(
                controler: passwordcontroller,
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
                    'I have accont',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          )),
                      child: const Text('Login')),
                ],
              ),
              const SizedBox(
                height: 25,
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
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
