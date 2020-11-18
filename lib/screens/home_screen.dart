import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:proclivity_digitech/widgets/services_listView.dart';
import 'package:proclivity_digitech/widgets/drawer.dart';
import 'package:proclivity_digitech/widgets/imageCarousel.dart';

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
          ImageCarousel(),
          AutoSizeText("OUR SERVICES",
              style: Theme.of(context).textTheme.headline6),

          // Text.rich(TextSpan(
          //     text: 'OUR ',
          //     style: Theme.of(context).textTheme.bodyText1.copyWith(
          //         fontSize: 19,
          //         color: Color(0XFF0AA7BA),
          //         fontWeight: FontWeight.bold),
          //     children: <InlineSpan>[
          //       TextSpan(
          //         text: 'SERVICES',
          //         style: Theme.of(context)
          //             .textTheme
          //             .headline6
          //             .copyWith(color: Color(0XFFF58345)),
          //       )
          //     ])),
          ServiceList(),
          // SizedBox(
          //   height: 5,
          // ),
          AutoSizeText("WORK PROCESS",
              style: Theme.of(context).textTheme.headline6),
          // Text.rich(
          //   TextSpan(
          //     text: 'WORK ',
          //     style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize:17,color: Color(0XFF0AA7BA),fontWeight: FontWeight.bold),
          //     children: <InlineSpan>[
          //       TextSpan(
          //         text: 'PROCESS',
          //         style: Theme.of(context).textTheme.headline6.copyWith(color:Color(0XFFF58345)),
          //       )
          //     ]
          //   )
          // ),
        ],
      )),
    );
  }
}
