import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swd/common/theme/pallets.dart';
import 'package:swd/common/widgets/custom_button.dart';
import 'package:swd/common/widgets/fillettextfield.dart';
import 'package:swd/features/auth/presentations/screens/rsignup.dart';
import 'package:swd/features/dashboard/screens/dashboard.dart';

import '../../../../common/widgets/textview.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Pallets.containercolor,
              Color(0xff1c1816),
              // Color(0xff211c19),
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,

          )),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Pallets.greyblack),
                ),


                SizedBox(height: 24,),
                TextView(text:
                  "Welcome back 👋🏾",
                 fontSize: 30, fontWeight: FontWeight.w400,
                  color: Pallets.grey75,
                ),

                SizedBox(height: 72,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(text:
                      "Email address",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,

                    ),
                    SizedBox(height: 8,),
                    FilledTextField(hint: 'Email address',
                      hasBorder: true,

                      preffix: SizedBox(width: 10,),),
                    SizedBox(height: 24,),
                    TextView(text:
                    "Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,

                    ),
                    const SizedBox(height: 8,),
                    const FilledTextField(hint: 'Password',
                      hasBorder: true,
                      preffix: SizedBox(width: 10,),),
                    const SizedBox(height: 8,),
                    const TextView(text: "Forgot password?",color: Pallets.grey75,),
                    const SizedBox(height: 46,),
                    CustomButton(child: const TextView(text: "Sign In",color: Pallets.whitecolor,), onPressed: (){
                      Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>Dashboard()));
                    }),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      TextView(text: "I don’t have an account?,",color: Pallets.grey75,),
                      TextView(text: " Create account,",color: Pallets.plight,
                      onTap: (){
                        Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>SignUp()));
                      },),

                    ],),

                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
