import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tinder_clone/models/tinder_clone_icons.dart';
import 'package:tinder_clone/Screens/PhoneNumber.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColor,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            stops: [0.0, 0.35, 1.0],
          ),
        ),
        child: Column(children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
                    color: Colors.white,
                    size: ScreenUtil().setSp(180.0),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10.0)),
                  Text(
                    "tinder",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(140.0),
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(40.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'By clicking "Log in", you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(70.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneNumberScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "LOG IN WITH PHONE NUMBER",
                            style: TextStyle(
                              color: Colors.grey,
                              wordSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil().setHeight(70.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        backgroundColor: Colors.white,
                        elevation: 0.0,
                      ),
                      onPressed: () {
                        var snackBar = SnackBar(
                          content: Text("You can add this feature dev 😍"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.facebook,
                            color: Theme.of(context).primaryColor,
                            size: ScreenUtil().setSp(80.0),
                          ),
                          SizedBox(width: ScreenUtil().setWidth(20.0)),
                          Text(
                            "LOG IN WITH FACEBOOK",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenUtil().setSp(45.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
