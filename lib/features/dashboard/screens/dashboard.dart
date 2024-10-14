import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swd/common/theme/pallets.dart';
import 'package:swd/features/home/presentation/screen/home.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  int selectindex=0;
  static List<StatefulWidget> pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
              color: Pallets.plight
        ),
        child: Image.asset("assets/images/message.png"),
      ),
      backgroundColor: Pallets.backgroundcolor,
      body:IndexedStack(index: selectindex, children: pages),

      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Pallets.backgroundcolor,
        selectedItemColor: Pallets.white,
          unselectedItemColor: Pallets.grey75.withOpacity(0.2),
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: Pallets.grey35),
          items: [
        const BottomNavigationBarItem(icon: Icon(Iconsax.home),label: "Home",backgroundColor: Pallets.backgroundcolor, ),

        BottomNavigationBarItem(icon: Image.asset("assets/images/servies.png",width: 30,height: 30,),label: "Services",backgroundColor:  Pallets.backgroundcolor,),
        BottomNavigationBarItem(icon:Image.asset("assets/images/stat.png",width: 30,height: 30,),label: "Statistics",backgroundColor:  Pallets.backgroundcolor,),
        const BottomNavigationBarItem(icon: Icon(Iconsax.people),label: "Referrals",backgroundColor:  Pallets.backgroundcolor,),
        const BottomNavigationBarItem(icon: Icon(Iconsax.setting_2),label: "Settings",backgroundColor:  Pallets.backgroundcolor,),
      ]),
    );
  }
}
