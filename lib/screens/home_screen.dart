import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:proclivity_digitech/app_theme.dart';
import 'package:proclivity_digitech/widgets/serviceItems_ListView.dart';
import 'package:proclivity_digitech/widgets/services_listView.dart';
import 'package:proclivity_digitech/widgets/drawer.dart';
import 'package:proclivity_digitech/widgets/imageCarousel.dart';
import 'package:proclivity_digitech/widgets/services_listView.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: drawerKey,
      drawerEdgeDragWidth: 0,
     drawer: new MyDrawer(),

     // drawer: MyMultiDrawer(),

      appBar: new AppBar(
        
        //centerTitle: true,
        title: new Container(
            height: MediaQuery.of(context).padding.top + 20,
            child: new Image.asset("assets/appBar.png", fit: BoxFit.cover)),
       
        leading: new IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: new Icon(Icons.menu,
              color: Theme.of(context).iconTheme.color,
              size: Theme.of(context).iconTheme.size),
        ),
        actions: <Widget>[
          new IconButton(
            onPressed: () {},
            icon: new Icon(Icons.search_sharp,
                color: Theme.of(context).iconTheme.color,
                size: Theme.of(context).iconTheme.size),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ImageCarousel(),
            AutoSizeText("OUR SERVISES", style: Theme.of(context).textTheme.headline6),
           ServiceList(),
           SizedBox(height: 10,),
           AutoSizeText("WORK PROCESS", style: Theme.of(context).textTheme.headline6),
          ],
        )
      ),
    );
  }
}
