import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swd/common/theme/pallets.dart';
import 'package:swd/common/widgets/textview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Pallets.backgroundcolor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 330,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              border: Border.all(color: Pallets.grey75)),
                          child: Icon(Iconsax.user),
                        ),
                        TextView(
                          text: "Welcome, Sam 👋🏾",
                          fontSize: 16,
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.5),
                              border: Border.all(color: Pallets.grey75)),
                          child: Icon(Iconsax.notification),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(colors: [
                            Pallets.plight,
                            Pallets.plight,
                            Color(0xffef7758),
                            Color(0xffef9c58)
                          ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextView(
                                text: "Wallet balance",
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  TextView(
                                    text: "NGN 50,000",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Iconsax.eye_slash,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfff9c0bc)),
                                child: const Row(
                                  children: [
                                    TextView(
                                      text: "Cashback",
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    TextView(
                                      text: "N341.20",
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: Pallets.plight,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          const SizedBox(
                            width: 1,
                            height: 60,
                            child: VerticalDivider(
                              color: Pallets.plight,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color(0xfff2a879)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextView(
                                  text: "MONIEPOINT",
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                const Row(
                                  children: [
                                    TextView(
                                      text: "8192017482",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Iconsax.copy,
                                      size: 16,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                const TextView(
                                  text: "Deposit Fee: N20",
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 1,
                                  width: 85,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/Plus.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Top up",
                                fontSize: 12,
                              )
                            ],
                          ),
                          Container(
                            height: 15,
                            width: 1,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/Send.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Transfer",
                                fontSize: 12,
                              )
                            ],
                          ),
                          Container(
                            height: 15,
                            width: 1,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/clock.png",
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "History",
                                fontSize: 12,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(height: 3,
                    width: 30,
                    color: Pallets.grey75.withOpacity(0.4),)
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextView(
                      text: "Quick Actions",
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/data.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Data",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/airtime.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Airtime",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/show.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Showmax",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/card.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Giftcards",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/bet.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Betting",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/light.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "Electricity",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/tv.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "TV/Cable",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Pallets.greyblack),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/pin.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const TextView(
                                text: "E-Pin",
                                color: Pallets.whitecolor,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView(
                          text: "News & Update",
                          color: Pallets.whitecolor,
                        ),
                        TextView(
                          text: "View All",
                          color: Pallets.plight,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 130,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Container(
                            height: 120,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/Rectangle.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            height: 120,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/Rectangle.png"),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(width: 10,),

                          Container(
                            height: 120,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/Rectangle.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(height: 50,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
