import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Map> sideMenu = [
    {'title': 'Dashboard', 'img': 'assets/icons/menu_dashbord.svg'},
    {'title': 'Transactions', 'img': 'assets/icons/menu_tran.svg'},
    {'title': 'Task', 'img': 'assets/icons/menu_task.svg'},
    {'title': 'Documents', 'img': 'assets/icons/menu_doc.svg'},
    {'title': 'Store', 'img': 'assets/icons/menu_store.svg'},
    {'title': 'Notificatons', 'img': 'assets/icons/menu_notification.svg'},
    {'title': 'Profile', 'img': 'assets/icons/menu_profile.svg'},
    {'title': 'Settings', 'img': 'assets/icons/menu_setting.svg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerHeader(child: Image.asset('assets/images/logo.png')),
                  ListView.builder(
                      itemCount: sideMenu.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ListTile(
                          leading: SvgPicture.asset(
                            sideMenu[index]['img'],
                            color: Colors.white,
                          ),
                          title: Text(
                            sideMenu[index]['title'],
                            style: const TextStyle(color: Colors.white),
                          ),
                          hoverColor: Colors.blue,
                          horizontalTitleGap: 0))
                ],
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.red,
              ))
        ],
      )),
    );
  }
}
