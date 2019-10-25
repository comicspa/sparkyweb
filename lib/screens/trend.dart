import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sparkyweb/manage/manage_device_info.dart'; // use this to make all the widget size responsive to the device size.
// import 'package:sparky/models/model_localization_info.dart';
// import 'package:transparent_image/transparent_image.dart';
// import 'package:sparky/models/model_today_trend_comic_info.dart';
// import 'package:sparky/packets/packet_c2s_today_trend_comic_info.dart';
// import 'package:sparky/models/model_featured_comic_info.dart';
// import 'package:sparky/packets/packet_c2s_featured_comic_info.dart';
import 'package:sparkyweb/models/model_recommended_comic_info.dart';
import 'package:sparkyweb/screens/coming_soon.dart';
import 'package:transparent_image/transparent_image.dart';
// import 'package:sparky/packets/packet_c2s_recommended_comic_info.dart';
// import 'package:sparky/models/model_new_comic_info.dart';
// import 'package:sparky/packets/packet_c2s_new_comic_info.dart';
// import 'package:sparky/models/model_real_time_trend_comic_info.dart';
// import 'package:sparky/packets/packet_c2s_real_time_trend_comic_info.dart';
// import 'package:sparky/models/model_weekly_trend_comic_info.dart';
// import 'package:sparky/packets/packet_c2s_weekly_trend_comic_info.dart';
// import 'package:sparky/screens/detail/detail_page.dart';
import 'common_widgets.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;





class Trend extends StatefulWidget {
  @override
  _TrendState createState() => new _TrendState();
}

class _TrendState extends State<Trend> with WidgetsBindingObserver {
  // PacketC2STodayTrendComicInfo c2STodayTrendComicInfo =
  //     new PacketC2STodayTrendComicInfo(); // use this to handle data
  // PacketC2SFeaturedComicInfo c2sFeaturedComicInfo =
  //     new PacketC2SFeaturedComicInfo(); // use this to handle data
  // PacketC2SRecommendedComicInfo c2sRecommendedComicInfo =
  //     new PacketC2SRecommendedComicInfo();
  // PacketC2SNewComicInfo c2sNewComicInfo = new PacketC2SNewComicInfo();
  // PacketC2SRealTimeTrendComicInfo c2sRealTimeTrendInfo =
  //     new PacketC2SRealTimeTrendComicInfo();
  // PacketC2SWeeklyTrendComicInfo c2sWeeklyTrendComicInfo =
  //     new PacketC2SWeeklyTrendComicInfo();

  // final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();



  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    // generating packet

    //c2STodayTrendComicInfo.generate(0, 0,false);
    //c2sFeaturedComicInfo.generate(0, 0,false);
    //c2sRecommendedComicInfo.generate(0, 0);
    //c2sNewComicInfo.generate(0, 0,false);
    //c2sRealTimeTrendInfo.generate(0, 0,false);
    //c2sWeeklyTrendComicInfo.generate(0, 0,false);

    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) => _refreshIndicatorKey.currentState.show());
        // for pull to refresh
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
  }

  int _current = 0; // this is for indicator handler

  @override
  Widget build(BuildContext context) {
    bool _first = true;
    return SingleChildScrollViewWithScrollbar(
      scrollbarColor: Colors.brown,
      scrollbarThickness: 10.0,
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Todo need to add indicator for the CarouselSlider with auto scroll true
          /* SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: FutureBuilder<List<ModelFeaturedComicInfo>>(
                future: c2sFeaturedComicInfo.fetch(null),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: LoadingIndicator());

                  {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CarouselSlider(
                          items: snapshot.data.map((i) {
                            return Builder(builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(color: Colors.white),
                                child: GestureDetector(
                                  child: FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: i.thumbnailUrl,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  /* CachedNetworkImage(
                                      imageUrl: i.thumbnailUrl,
                                      placeholder: (context, url) =>
                                          LoadingIndicator(),
                                      fit: BoxFit.fitWidth), */
                                  onTap: () {
                                    Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            i.userId,
                                            i.comicId), // link to Actual viewer
                                      ),
                                    );
                                  },
                                ),
                              );
                            });
                          }).toList(),
                          autoPlay: false,
                          enlargeCenterPage: true,
                          aspectRatio: 1.4,
                          onPageChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(
                            ModelFeaturedComicInfo.list,
                            (index, i) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4)),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ), */
          Container(
            height: 300,
            alignment: Alignment.center,
            
            
            child: InkWell(
              onTap: (){
                setState(() {
                  _first = !_first;

                });
                
              },
              child: AnimatedCrossFade(
                
                duration: const Duration(seconds: 1),
                firstChild: new Container(width: 200, height: 30, color: Colors.blue,),
                secondChild: new Container(width: 100, height: 10, color: Colors.black,),
                crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(15, 5, 0, 2),
            child: Text( 'Recommended', //ModelLocalizationInfo.getText('trend', 'title_1') //Recommended
               
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.indigoAccent,
            height: 200,
            width: double.infinity,
            child: Scrollbar(
              child: ListView.builder(
                // physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => 
                  Container(
                    padding: EdgeInsets.all(4),
                    
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: new BorderRadius.circular(10.0)),
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(10.0),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'batman_black.webp',
                        image: 'batman_black.webp', //snapshot.data[index].thumbnailUrl,
                        fit: BoxFit.fill,
                        height: 150,
                      )
                      /* CachedNetworkImage(
                        imageUrl: snapshot.data[index].thumbnailUrl,
                        placeholder: (context, url) => LoadingIndicator(),
                        fit: BoxFit.cover,
                        height: ManageDeviceInfo.resolutionHeight * 0.15,
                      ) */,
                    ),
                  ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(15, 5, 0, 2),
            child: Text( '오늘의 추천', //ModelLocalizationInfo.getText('trend', 'title_1') //Recommended
               
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blueGrey[200],
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              // physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => 
                Container(
                  padding: EdgeInsets.all(4),
                  
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(borderRadius: new BorderRadius.circular(10.0)),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'onepunchman.webp',
                      image: 'onepunchman.webp', //snapshot.data[index].thumbnailUrl,
                      fit: BoxFit.fill,
                      height: 150,
                    )
                    /* CachedNetworkImage(
                      imageUrl: snapshot.data[index].thumbnailUrl,
                      placeholder: (context, url) => LoadingIndicator(),
                      fit: BoxFit.cover,
                      height: ManageDeviceInfo.resolutionHeight * 0.15,
                    ) */,
                  ),
                ),
            ),
          ),
          /* Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: FutureBuilder<List<ModelRecommendedComicInfo>>(
              future: null,//c2sRecommendedComicInfo.fetch(null),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return new LoadingIndicator();
                {
                  return TrendCardList(snapshot: snapshot);
                }
              },
            ),
          ), */
           /* Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ComingSoonScreen()
                        
                        // DetailPage(snapshot.data[index].userId, snapshot.data[index].comicId), // link to Actual viewer
                      ),
                    );
                  },
                  child: Container(            
                    child: FittedBox(
                      child: Material(
                        color: Colors.white,
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(4.0),
                              shadowColor: Color(0x802196F3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: ManageDeviceInfo.resolutionWidth * 0.41,
                              height: ManageDeviceInfo.resolutionHeight * 0.15,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(2.0),
                                child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image: 'batman_black.webp', //snapshot.data[index].thumbnailUrl ,
                                  fit: BoxFit.cover,
                                  height: ManageDeviceInfo.resolutionHeight * 0.15,
                                )
                                /* CachedNetworkImage(
                                  imageUrl: snapshot.data[index].thumbnailUrl,
                                  placeholder: (context, url) => LoadingIndicator(),
                                  fit: BoxFit.cover,
                                  height: ManageDeviceInfo.resolutionHeight * 0.15,
                                ) */,
                              ),
                            ),
                            SizedBox(
                              height: ManageDeviceInfo.resolutionHeight * 0.002), 
                            Container(
                              padding: EdgeInsets.only(left: ManageDeviceInfo.resolutionWidth * 0.01),
                              height: ManageDeviceInfo.resolutionHeight * 0.048,
                              width: ManageDeviceInfo.resolutionWidth * 0.41,                    
                              child: Text(  'ㅅㄷㄴㅅ', //snapshot.data[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                  fontSize: ManageDeviceInfo.resolutionHeight * 0.019,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ManageDeviceInfo.resolutionHeight * 0.002), 
                            Container(
                              width: ManageDeviceInfo.resolutionWidth * 0.41,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: <Widget>[
                                  Container(
                                    height: ManageDeviceInfo.resolutionHeight * 0.042,
                                    width: ManageDeviceInfo.resolutionWidth * 0.20,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('ㅅㄷㄴㅅ',
                                        //snapshot.data[index].userId,
                                        textAlign: TextAlign.right,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: ManageDeviceInfo.resolutionHeight * 0.018,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        ManageDeviceInfo.resolutionWidth * 0.02,
                                  ),
                                  Container(
                                    height: ManageDeviceInfo.resolutionHeight * 0.032,
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      size: ManageDeviceInfo.resolutionHeight * 0.025,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(right: ManageDeviceInfo.resolutionWidth * 0.02),
                                      height: ManageDeviceInfo.resolutionHeight * 0.022,
                                      width: ManageDeviceInfo.resolutionWidth * 0.22,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '250,589,938', //Todo need to create 조회수 data
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            color: Colors.black87,
                                            fontSize: ManageDeviceInfo.resolutionHeight * 0.018,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ), */

          /* Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(15, 20, 0, 2),
            child: Text(
              ModelLocalizationInfo.getText('trend', 'title_2'), //Realtime Trend
              style: TextStyle(
                  fontSize: ManageDeviceInfo.resolutionHeight * 0.024,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: FutureBuilder<List<ModelRealTimeTrendComicInfo>>(
              future: c2sRealTimeTrendInfo.fetch(null),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: ManageDeviceInfo.resolutionHeight * .25,
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      ],
                    ),
                  );
                {
                  return TrendCardList(snapshot: snapshot);
                }
              },
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
            child: Text(
              ModelLocalizationInfo.getText('trend', 'title_3'), //New Comics
              style: TextStyle(
                  fontSize: ManageDeviceInfo.resolutionHeight * 0.024,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: FutureBuilder<List<ModelNewComicInfo>>(
              future: c2sNewComicInfo.fetch(null),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return LoadingIndicator();
                {
                  return TrendCardList(snapshot: snapshot);
                }
              },
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
            child: Text(ModelLocalizationInfo.getText('trend', 'title_5'), //Today's Trend
              
              style: TextStyle(
                  fontSize: ManageDeviceInfo.resolutionHeight * 0.024,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: FutureBuilder<List<ModelTodayTrendComicInfo>>(
              future: c2STodayTrendComicInfo.fetch(null),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return LoadingIndicator();
                {
                  return TrendCardList(snapshot: snapshot);
                }
              },
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
            child: Text(
              ModelLocalizationInfo.getText('trend', 'title_4'), //Weekly Trend
              style: TextStyle(
                  fontSize: ManageDeviceInfo.resolutionHeight * 0.024,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            height: ManageDeviceInfo.resolutionHeight * 0.28,
            child: FutureBuilder<List<ModelWeeklyTrendComicInfo>>(
              future: c2sWeeklyTrendComicInfo.fetch(null),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return LoadingIndicator();
                {
                  return TrendCardList(snapshot: snapshot);
                }
              },
            ),
          ), */
        ],
      ),
    );
  }
}

//Todo apply refreshIndicator to refresh with pull swipe

/* RefreshIndicator(
  key: _refreshIndicatorKey,
  onRefresh: refresh,
  child: ListView.builder(
    children: [

    ]
  )
), */



String checkTitle(int type) {
  String title;
  

  switch (type) {
    case 1:
    {
      title = 'title_1'; //Recommended
    }
    break;
    case 2:    
    {
      title = 'title_2'; //Realtime Trend
    }
    break;
    case 3:
    {
      title = 'title_3'; // New Comics
    }
    break;
    case 4:
    {
      title = 'title_4'; // Today Trend
    }
    break;
    case 5:
    {
      title = 'title_5'; // Weekly Trend
    }
    break;
    
    default:
    {
      title = 'title_2'; // Realtime Trend
    }
    break;
  }
}

// Need handler for indicator
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

// Take only 6 creatorFeaturedList

/* final List<String> featuredComicsList = [];

List<String> countBanner(List<ModelFeaturedComicInfo> countBanner) {
  // Todo Need to change this "TodayPopularComicInfo" to Creator Featured
  print('countBanner start');

  if (null == countBanner) return null;

  int count = countBanner.length;
  if (count > 6) count = 6;

  for (int i = 0; i < count; ++i) {
    featuredComicsList.add(countBanner.elementAt(i).thumbnailUrl);
    print(countBanner.elementAt(i).thumbnailUrl);
  }

  return featuredComicsList;
}

List bannerList = map<Widget>(
  featuredComicsList,
  (index, i) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: i.thumnailUrl,
          fit: BoxFit.fill,
        )
        /* CachedNetworkImage(imageUrl: i.thumbnailUrl, fit: BoxFit.fill), */
      ),
    );
  },
).toList(); */


class TrendCardList extends StatelessWidget {
  const TrendCardList({
    Key key,
    @required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    List<dynamic> values = snapshot.data;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push<Widget>(
              context,
              MaterialPageRoute(
                builder: (context) => ComingSoonScreen()
                
                // DetailPage(snapshot.data[index].userId, snapshot.data[index].comicId), // link to Actual viewer
              ),
            );
          },
          child: Container(            
            child: FittedBox(
              child: Material(
                color: Colors.white,
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(4.0),
                      shadowColor: Color(0x802196F3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: ManageDeviceInfo.resolutionWidth * 0.41,
                      height: ManageDeviceInfo.resolutionHeight * 0.15,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(2.0),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: snapshot.data[index].thumbnailUrl,
                          fit: BoxFit.cover,
                          height: ManageDeviceInfo.resolutionHeight * 0.15,
                        )
                        /* CachedNetworkImage(
                          imageUrl: snapshot.data[index].thumbnailUrl,
                          placeholder: (context, url) => LoadingIndicator(),
                          fit: BoxFit.cover,
                          height: ManageDeviceInfo.resolutionHeight * 0.15,
                        ) */,
                      ),
                    ),
                    SizedBox(
                      height: ManageDeviceInfo.resolutionHeight * 0.002), 
                    Container(
                      padding: EdgeInsets.only(left: ManageDeviceInfo.resolutionWidth * 0.01),
                      height: ManageDeviceInfo.resolutionHeight * 0.048,
                      width: ManageDeviceInfo.resolutionWidth * 0.41,                    
                      child: Text(snapshot.data[index].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: ManageDeviceInfo.resolutionHeight * 0.019,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ManageDeviceInfo.resolutionHeight * 0.002), 
                    Container(
                      width: ManageDeviceInfo.resolutionWidth * 0.41,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: <Widget>[
                          Container(
                            height: ManageDeviceInfo.resolutionHeight * 0.042,
                            width: ManageDeviceInfo.resolutionWidth * 0.20,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                snapshot.data[index].userId,
                                textAlign: TextAlign.right,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: ManageDeviceInfo.resolutionHeight * 0.018,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                ManageDeviceInfo.resolutionWidth * 0.02,
                          ),
                          Container(
                            height: ManageDeviceInfo.resolutionHeight * 0.032,
                            child: Icon(
                              Icons.remove_red_eye,
                              size: ManageDeviceInfo.resolutionHeight * 0.025,
                              color: Colors.black54,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(right: ManageDeviceInfo.resolutionWidth * 0.02),
                              height: ManageDeviceInfo.resolutionHeight * 0.022,
                              width: ManageDeviceInfo.resolutionWidth * 0.22,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '250,589,938', //Todo need to create 조회수 data
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    color: Colors.black87,
                                    fontSize: ManageDeviceInfo.resolutionHeight * 0.018,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class SingleChildScrollViewWithScrollbar extends StatefulWidget {
  const SingleChildScrollViewWithScrollbar({
    Key key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    this.primary,
    this.physics,
    this.controller,
    this.child,
    this.dragStartBehavior = DragStartBehavior.down,
    this.scrollbarColor,
    this.scrollbarThickness = 6.0,
  }) : super(key: key);

  final Axis scrollDirection;
  final bool reverse;
  final EdgeInsets padding;
  final bool primary;
  final ScrollPhysics physics;
  final ScrollController controller;
  final Widget child;
  final DragStartBehavior dragStartBehavior;
  final Color scrollbarColor;
  final double scrollbarThickness;

  @override
  _SingleChildScrollViewWithScrollbarState createState() => _SingleChildScrollViewWithScrollbarState();
}

class _SingleChildScrollViewWithScrollbarState extends State<SingleChildScrollViewWithScrollbar> {
  AlwaysVisibleScrollbarPainter _scrollbarPainter;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    rebuildPainter();
  }

  @override
  void didUpdateWidget(SingleChildScrollViewWithScrollbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    rebuildPainter();
  }

  void rebuildPainter() {
    final theme = Theme.of(context);
    _scrollbarPainter = AlwaysVisibleScrollbarPainter(
      color: widget.scrollbarColor ?? theme.highlightColor.withOpacity(1.0),
      textDirection: Directionality.of(context),
      thickness: widget.scrollbarThickness,
    );
  }

  @override
  void dispose() {
    _scrollbarPainter?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        foregroundPainter: _scrollbarPainter,
        child: RepaintBoundary(
          child: SingleChildScrollView(
            scrollDirection: widget.scrollDirection,
            reverse: widget.reverse,
            padding: widget.padding,
            primary: widget.primary,
            physics: widget.physics,
            controller: widget.controller,
            dragStartBehavior: widget.dragStartBehavior,
            child: Builder(
              builder: (BuildContext context) {
                _scrollbarPainter.scrollable = Scrollable.of(context);
                return widget.child;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class AlwaysVisibleScrollbarPainter extends ScrollbarPainter {
  AlwaysVisibleScrollbarPainter({
    @required Color color,
    @required TextDirection textDirection,
    @required double thickness,
  }) : super(
          color: color,
          textDirection: textDirection,
          thickness: thickness,
          fadeoutOpacityAnimation: const AlwaysStoppedAnimation(1.0),
        );

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    _scrollable?.position?.removeListener(_onScrollChanged);
    _scrollable = value;
    _scrollable?.position?.addListener(_onScrollChanged);
    _onScrollChanged();
  }

  void _onScrollChanged() {
    update(_scrollable.position, _scrollable.axisDirection);
  }

  @override
  void dispose() {
    _scrollable?.position?.removeListener(notifyListeners);
    super.dispose();
  }
}