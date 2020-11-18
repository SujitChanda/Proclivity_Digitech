import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 250,
      child: new Drawer(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          child: new ListView(
            children: <Widget>[
              _drawerHead(context),
              new SizedBox(height: 2),
              new ListTile(
                leading: Icon(
                  EvaIcons.personOutline,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: _menuItem(
                  context,
                  "Account",
                  16,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                ),
              ),

              //SizedBox(height: 2),
              new ListTile(
                leading: Icon(
                  EvaIcons.optionsOutline,
                  color: Colors.amber,
                ),
                title: _menuItem(
                  context,
                  "Settings",
                  16,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                ),
              ),

              // SizedBox(height: 2),

              new Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: new Divider(
                  color: Colors.black54,
                ),
              ),
              new ExpansionTile(
                  leading: Icon(
                    EvaIcons.briefcaseOutline,
                    color: Colors.blue,
                  ),
                  title: _menuItem(
                    context,
                    "Services",
                    16,
                    () {},
                  ),
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/app_development.png")),
                            ),
                            Expanded(
                                child: _menuItem(
                                    context, "App Development", 14, () {})),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/digital_Marketing.png")),
                            ),
                            Expanded(
                              child: _menuItem(
                                  context, "Digital Marketing", 14, () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/software_development.png")),
                            ),
                            Expanded(
                              child: _menuItem(
                                  context, "Software Development", 14, () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/web_consulting.png")),
                            ),
                            Expanded(
                              child: _menuItem(
                                  context, "Web Consulting", 14, () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/web_development.png")),
                            ),
                            Expanded(
                              child: _menuItem(
                                  context, "Web Development", 14, () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/web_hosting.png")),
                            ),
                            Expanded(
                              child:
                                  _menuItem(context, "Web Hosting", 14, () {}),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset(
                                      "assets/serviceImages/wifi_marketing.png")),
                            ),
                            Expanded(
                              child: _menuItem(
                                  context, "WiFI Marketing", 14, () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),

              new ListTile(
                leading: Icon(
                  EvaIcons.pieChartOutline,
                  color: Colors.deepOrangeAccent,
                ),
                title: _menuItem(
                  context,
                  "Portfolio",
                  16,
                  () {},
                ),
              ),
              new ListTile(
                leading: Icon(
                  EvaIcons.messageCircleOutline,
                  color: Colors.purple,
                ),
                title: _menuItem(
                  context,
                  "Contact Us",
                  16,
                  () {},
                ),
              ),

              new ListTile(
                leading: Icon(EvaIcons.awardOutline, color: Colors.deepPurple),
                title: _menuItem(
                  context,
                  "Career",
                  16,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                ),
              ),
              new ListTile(
                leading: Icon(
                  EvaIcons.questionMarkCircleOutline,
                  color: Colors.green,
                ),
                title: _menuItem(
                  context,
                  "About Us",
                  16,
                  () {},
                ),
              ),

              //SizedBox(height: 2),

              new Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: new Divider(
                  color: Colors.black54,
                ),
              ),

              new ListTile(
                leading: Icon(EvaIcons.powerOutline, color: Colors.red),
                title: _menuItem(
                  context,
                  "Log Out",
                  16,
                  () {
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                ),
              ),

              // SizedBox(height: 2),

              new Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  color: Colors.black54,
                ),
              ),

              new SizedBox(height: 10),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: new AspectRatio(
                    aspectRatio: 15 / 6,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: new Image.asset(
                        "assets/appBar.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerHead(context) {
    return new UserAccountsDrawerHeader(
      decoration: new BoxDecoration(
        // gradient: new LinearGradient(
        //    begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //  colors: [
        //     Colors.red,
        //     Colors.black

        //  ]
        // ),

        image: DecorationImage(
          image: AssetImage("assets/drawer3.png"),
          fit: BoxFit.cover,
        ),

        // borderRadius: BorderRadius.circular(10),
      ),
      accountEmail: new AutoSizeText("S.chanda@outlook.com",
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 12,
              )),
      accountName: new AutoSizeText("Sujit Chanda",
          style: Theme.of(context).textTheme.bodyText2.copyWith(
            fontSize: 17,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 1.0,
                color: Color(0XFF0AA7BA),
              ),
              Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  color: Color(0XFF0AA7BA)),
            ],
          )),
      currentAccountPicture: new GestureDetector(
        child: new Container(
          // height: 150,
          // width: 150,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            boxShadow: [
              new BoxShadow(
                spreadRadius: 2,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.5),
                // offset: Offset(0,10)
              )
            ],
            image: new DecorationImage(
                image: new AssetImage('assets/user.jpg'), fit: BoxFit.cover),
          ),
        ),

        // CircleAvatar(
        //   backgroundColor: Colors.black,
        //   child: CircleAvatar(
        //     radius: 34.5,
        //       backgroundColor: Colors.white,
        //               child: new CircleAvatar(
        //       radius: 33.5,

        //       backgroundImage: ExactAssetImage('assets/mypic.jpeg'),
        //     ),
        //   ),
        // ),
      ),

      // ClipRRect(
      //   borderRadius: BorderRadius.circular(70),
      //   child: Image(
      //     image: NetworkImage(
      //         "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
      //     width: 70,
      //     height: 70,
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }

  Widget _menuItem(
    context,
    String _title,
    double _fontSize,
    Function _onTap,
  ) {
    return new InkWell(
        onTap: _onTap,
        child: new ListTile(
          title: new Text(
            "$_title",
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: _fontSize),
          ),
          // leading: Icon(_icon, color: _iconColor),
        ));
  }
}
