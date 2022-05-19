import 'package:flutter/material.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final heigthMediaquery = mediaQuery.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(color: Colors.black),
          child: SizedBox(
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppTheme.colors.textHighlight,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(45)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 110,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: heigthMediaquery * 0.05),
                const Text(
                  'Get your Money Under Control',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: heigthMediaquery * 0.03),
                const Text(
                  'Manage your expenses.',
                  style: TextStyle(color: Colors.grey, fontSize: 24),
                ),
                SizedBox(height: heigthMediaquery * 0.01),
                const Text(
                  'Seamlessly.',
                  style: TextStyle(color: Colors.grey, fontSize: 24),
                ),
                SizedBox(height: heigthMediaquery * 0.05),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign Up with Email ID',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(width: 1.8, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/google.png',
                        height: 18,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Already have an account?'),
                      TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: heigthMediaquery * 0.025),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
