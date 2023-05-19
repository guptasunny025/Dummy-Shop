import 'package:flutter/material.dart';
import 'package:yudoo/bottomnavigation_screen.dart';
import 'package:yudoo/screens/dashBoard_screen.dart';
import 'package:yudoo/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: Container(
          color: Color(0xFFF4F5FA),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: devicesize.height / 4 / 4 * .8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: devicesize.width / 4,
                      height: devicesize.height / 4 / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/default.png',
                            image:
                                'https://p7.hiclipart.com/preview/86/271/602/shopping-bags-trolleys-computer-icons-shopping-cart-flash-sale.jpg',
                            fit: BoxFit.fill,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: devicesize.height / 4 / 3,
                    left: devicesize.width / 4 / 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('Login with email and password'),
                  ],
                ),
              ),
              Card(
                elevation: 3,
                shadowColor: Colors.grey[100],
                margin: EdgeInsets.all(devicesize.width / 4 / 4 * .7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                child: Container(
                  width: double.infinity,
                  height: devicesize.height / 2 * .8,
                  child: Column(
                    children: [
                      SizedBox(
                        height: devicesize.height / 4 / 4 / 4,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: devicesize.height / 4 / 4 / 3),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: devicesize.height / 4 / 3 * .9,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 8)),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F5FA),
                            borderRadius: BorderRadius.circular(13)),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: devicesize.height / 4 / 4 / 3),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: devicesize.height / 4 / 3 * .9,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 8)),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F5FA),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: devicesize.height / 4 / 4 / 2),
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          // width: devicesize.width / 2,
                          height: devicesize.height / 4 / 3 * .9,
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: .5),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF3B85E4),
                                  Color(0xFF3B85E4),
                                  Color(0xFF339DCD).withOpacity(.9),
                                  Color(0xFF2AB3B9),
                                ],
                                stops: [0.4, 0.3, 0.8, 0.9],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return BottomNavigationScreen();
                          }));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: devicesize.height / 4 / 4 / 2),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color(0xFF7BB9E4),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('Don\'t have an account?'),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: devicesize.height / 4 / 4,
                        width: devicesize.width / 4,
                        alignment: Alignment.center,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xFF419AD5,
                              )),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(
                                  0xFF419AD5,
                                ),
                                width: 2)),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return SignUpScreen();
                        }));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
