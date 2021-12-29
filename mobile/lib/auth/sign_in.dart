import 'package:flutter/material.dart';
import 'package:mobile/pages/buycar_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/pinned.dart';



class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome',

    home :Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Sign_in'),
      ),

      body:Stack(children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(0.0),),
        Pinned.fromPins(
          Pin(size: 497.0, end: -283.0),
          Pin(start: -16.0, end: 0.0),
          child:
          // Adobe XD layer: 'topp' (shape)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/cari.png'),
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.65), BlendMode.dstIn),
              ),
            ),
          ),

        ),

      Container(

        padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 99, 0, 10),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "Log Back Into Your Account",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                height: 5.0,
                width: 80.0,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/cari.png')
                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),

                    child: Text('Email '),


                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: const Color.fromRGBO(239, 197, 197, 1.0),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          hintText: 'Enter Email Adress'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text('Password '),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromRGBO(239, 197, 197, 1.0),
                        filled: true,
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Enter Password'),
                    obscureText: _isObscure,
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: ElevatedButton(
                      child: Text(
                        "sign_in".toUpperCase(),
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.black),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: BorderSide(
                                    color: Colors.redAccent))),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BuycarPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),



                  ]),
            ]),
      ),
    ])));
  }
}
