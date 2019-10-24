import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sparkyweb/screens/profile.dart';
import 'coming_soon.dart';
// import 'library.dart';
import 'more.dart';
// import 'trend.dart';
// import 'package:sparkyweb/screens/account/sign_in.dart';
// import 'notification.dart';
import 'common_widgets.dart';
import 'package:sparkyweb/manage/manage_device_info.dart'; // use this to make all the widget size responsive to the device size.
// import 'package:badges/badges.dart';


//import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  TabController controller;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();

//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
//      statusBarColor: Color(0xff202a30),  // Colors.blueGrey //Color(0xFF5986E1),
//    ));
    controller = TabController(length: 4, initialIndex: 0, vsync: this);
    controller.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state)
  {
    print('state = $state');
  }


  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.lightBlueAccent,//Color.fromRGBO(21, 24, 45, 1.0),
             //Color(0xff202a30), //Colors.black87, // Color(0xFF5986E1),
        centerTitle: true,
        /* leading: IconButton(
            tooltip: 'Profile',
            icon: Icon(
              Icons.menu,
              color: Colors.white, //Color.fromRGBO(21, 24, 45, 1.0),
            ),
            onPressed: () { 
              /* showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BuildAlertDialog();
                },
              ); */
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ComingSoonScreen(),
              ),
            );
            },
          ), */
        
        title: SizedBox(
          width: screenSize.width < 600 ? screenSize.width * 0.25 : screenSize.width * 0.25,
          height: screenSize.width < 600 ? screenSize.height * 0.15 : screenSize.height * 0.15,
          child: Image.asset(
            'sparky_logo.png',
            // fit: BoxFit.contain,
            
            // width: screenSize.width < 600 ? screenSize.width * 0.25 : screenSize.width * 0.25,
            // height: screenSize.height * 0.15,
            
            
          ),
        ),
        actions: <Widget>[
          IconButton(
            tooltip: 'Profile',
            icon: Icon(
              Icons.person,
              color: Colors.white, //Color.fromRGBO(21, 24, 45, 1.0),
            ),
            onPressed: () { 
              /* showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BuildAlertDialog();
                },
              ); */
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ComingSoonScreen(),
              ),
            );
            },
          ),
          IconButton(
            tooltip: 'Search',
            icon: Icon(
              FontAwesomeIcons.search,
                color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return BuildAlertDialog(null);
                },
              );
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => ComingSoonScreen(),
//                  ),
//                );
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget> [
            new DrawerHeader(child: new Text('Header'),),
            new ListTile(
              title: new Text('First Menu Item'),
              onTap: () {},
            ),
            new ListTile(
              title: new Text('Second Menu Item'),
              onTap: () {},
            ),
            new Divider(),
            new ListTile(
              title: new Text('About'),
              onTap: () {},
            ),
          ],
        )
      ),
      body: TabBarView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          // Trend(),
//          CreatorScreen(),
          // LibraryScreen(),
          // NotificationScreen(),
          MoreScreen(),
          MoreScreen(),
          MoreScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: TabBar(
        
        isScrollable: false,
        labelColor: Color.fromRGBO(21, 24, 45, 1.0),
//          labelStyle: TextStyle(fontSize: 5.0, fontWeight: FontWeight.bold),
        indicatorWeight: 2,
        unselectedLabelColor: Colors.blueGrey,
        indicatorColor: Colors.redAccent,
        controller: controller,
        tabs: <Widget>[
          Tab(
            icon: Icon(
              
              Icons.home,
              color: controller.index == 0
                  ? Colors.redAccent
                  : Colors.blueGrey,
              
            ),
            
          ), 
//            Tab(
//                icon: Icon(
//                  Icons.palette,
//                  color: controller.index == 1
//                    ? Color.fromRGBO(21, 24, 45, 1.0)
//                    : Colors.grey,
//               )
//              //    controller.index ==1 ? SvgPicture.asset('images/HomeKey_creater_on.svg', height: ManageDeviceInfo.resolutionHeight * 0.031): SvgPicture.asset('images/HomeKey_creater_off.svg', height: ManageDeviceInfo.resolutionHeight * 0.031),
//            ),

          Tab(
              icon: Icon(
            Icons.collections,
            color: controller.index == 1
                ? Colors.redAccent
                : Colors.blueGrey,
          )),

          Tab(
              icon: /* Badge(
                badgeColor: Colors.red,
                toAnimate: true,
                showBadge: true,
                position: BadgePosition.topRight(top: -1, right: -2),
                child:  */Icon(
                  Icons.email,
                  color: controller.index == 2
                        ? Colors.redAccent
                        : Colors.blueGrey
                ),
              // ),
          ),
          Tab(
              icon: Icon(
            Icons.menu,
            color: controller.index == 3
                ? Colors.redAccent
                : Colors.blueGrey,
          )),
          //Tab(text: 'More', icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
