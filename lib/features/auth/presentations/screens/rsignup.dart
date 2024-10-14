import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swd/features/auth/presentations/screens/signin.dart';

import '../../../../common/theme/pallets.dart';
import '../../../../common/widgets/custom_button.dart';
import '../../../../common/widgets/fillettextfield.dart';
import '../../../../common/widgets/textview.dart';
import 'otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                // Color(0xff211c19),
            colors: [
              // Pallets.containercolor,
              Pallets.containercolor,
              Pallets.bg1,
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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                            color: Pallets.grey75,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const TextView(
                          text: "Back",
                          color: Pallets.grey75,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextView(
                          text: "Sign in instead",
                          fontSize: 16,
                          color: Pallets.plight,
                          onTap: () {
                            Navigator.of(context).push(
                                CupertinoPageRoute(builder: (index) => Signin()));
                          },
                        ),
                        Container(
                          height: 1,
                          width: 120,
                          color: Pallets.plight,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const TextView(
                  text: "Create an account",
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Pallets.grey75,
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                text: "First name",
                                color: Pallets.grey75,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              FilledTextField(
                                hint: "First name",
                                preffix: SizedBox(
                                  width: 10,
                                ),
                                hasBorder: true,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                text: "Last name",
                                color: Pallets.grey75,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              FilledTextField(
                                hint: "Last name",
                                preffix: SizedBox(
                                  width: 10,
                                ),
                                hasBorder: true,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextView(
                      text: "Phone Number",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FilledTextField(
                      hint: 'Phone Number',
                      preffix: SizedBox(
                        width: 10,
                      ),
                      hasBorder: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextView(
                      text: "Email address",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FilledTextField(
                      hint: 'Email address',
                      preffix: SizedBox(
                        width: 10,
                      ),
                      hasBorder: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextView(
                      text: "Create Password",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FilledTextField(
                      hint: 'New Password',
                      preffix: SizedBox(
                        width: 10,
                      ),
                      hasBorder: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const TextView(
                      text: "Referral Code (Optional)",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Pallets.grey75,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const FilledTextField(
                      hint: 'Enter Referral Code',
                      hasBorder: true,
                      preffix: SizedBox(
                        width: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    CustomButton(
                        child: const TextView(
                          text: "Next",
                          color: Pallets.whitecolor,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (index) => OTpScreen()));
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 170,
                        child: Divider(
                          color: Pallets.whitecolor,
                          height: 2,
                          thickness: 2,
                        )),
                    SizedBox(
                        width: 170,
                        child: Divider(
                          color: Pallets.grey35,
                          height: 2,
                          thickness: 2,
                        )),
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
