import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swd/common/widgets/custom_button.dart';
import 'package:swd/common/widgets/fillettextfield.dart';

import '../../../../common/theme/pallets.dart';
import '../../../../common/widgets/otpfield.dart';
import '../../../../common/widgets/textview.dart';
import '../../../dashboard/screens/dashboard.dart';

class OTpScreen extends StatefulWidget {
  const OTpScreen({super.key});

  @override
  State<OTpScreen> createState() => _OTpScreenState();
}

class _OTpScreenState extends State<OTpScreen> {
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
            colors: [
              Pallets.containercolor,
              Pallets.bg1,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
              Pallets.backgroundcolor,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            // stops: [0.00, 0.3, 0.75, 1.0],

                )),
                child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
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
                  const SizedBox(
                    height: 56,
                  ),
                  const TextView(
                    text: "Verify your email",
                    fontSize: 29,
                    color: Pallets.grey60,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextView(
                    text: "Please enter the OTP sent to",
                    fontSize: 14,
                    color: Pallets.grey35,
                  ),TextView(
                    text: "tolu.ab19@gmail.com",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Pallets.grey60.withOpacity(0.8),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      OtpField(),
                      Container(
                        height: 2,
                        width: 10,
                        color: Pallets.grey75.withOpacity(0.6),
                      ),
                      OtpField(),
                    ],
                  ),
                ],
              ),
            ),
            CustomButton(
                child: const TextView(
                  text: "Verify Email",
                  color: Pallets.whitecolor,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (index) => Dashboard()));
                }),
            const SizedBox(
              height: 32,
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
                      color: Pallets.whitecolor,
                      height: 2,
                      thickness: 2,
                    )),
              ],
            )
          ],
                ),
              ),
        ));
  }
}
