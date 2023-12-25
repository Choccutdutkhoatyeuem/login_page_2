import 'package:flutter/material.dart';
import 'package:login_page_2/components/MyFieldText.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isEnable = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 217, 230),

          body: Center(
            child: Container(
              width: 350,
              height: 700,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255 ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'You must Sign In to join',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "We're a Team That Guides Each Other",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 60),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left:24),
                      child: Text(
                        'Email or UserName',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                   const SizedBox(height: 15),

                   MyFieldText(
                    icon: Icons.person,
    
                      controller: _userController,
                    hintText:'Uname@mail.com',
                    obscureText: false,
                    onChanged: (value) {
                      setState(() {
                     isEnable = ButtonChange();
                });
              },
                  ),
                   const SizedBox(height: 35),
                                    
                    const Align(
                    alignment: Alignment.centerLeft,
                    child:Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  MyFieldText(
                    controller: _passwordController,
                    icon: Icons.lock,
                    hintText:'Password',
                    obscureText: true, 
                    onChanged: (value) {
                setState(() {
                  isEnable = ButtonChange();
                });
              },
                  ),
                    const SizedBox(height: 30),

                    SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ),
                    const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: isEnable ? () { }: null,
                    child:  Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                      ),
                    ),
                     ),
                     style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                      backgroundColor: isEnable ? Colors.blue : Colors.grey,
                  ),
                  ),
                   const SizedBox (height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ),
          ),
        ),
       ),
    );
  }
    bool  ButtonChange() {
    return _userController.text.isNotEmpty && _passwordController.text.isNotEmpty;
  } 
}
