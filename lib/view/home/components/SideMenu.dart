import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class sideMenu extends StatelessWidget {
  sideMenu({
    Key? key,
  }) : super(key: key);

  List<Map> sideMenuData = [
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
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            ListView.builder(
                itemCount: sideMenuData.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                    hoverColor: Colors.red,
                    leading: SvgPicture.asset(
                      sideMenuData[index]['img'],
                      color: Colors.white,
                    ),
                    title: Text(
                      sideMenuData[index]['title'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ResponsiveValue(context,
                              defaultValue: 11.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                    name: MOBILE, value: 20.0),
                              ]).value),
                    ),
                    onTap: () {},
                    horizontalTitleGap: 0,
                    minLeadingWidth:30
                    ))
          ],
        ),
      ),
    );
  }
}
