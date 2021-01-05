import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Config.dart';

class TrendingScreen extends StatelessWidget {
  static const String id = "Trendingid";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
            children: [
              Expanded(
                flex:3,
                child: Swiper(
                  itemCount: 5,
                  itemWidth: MediaQuery.of(context).size.width ,
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                      startIndex: -1,
                      stateCount: 3
                  ).addRotate([
                    -45.0/180,
                    0.0,
                    45.0/180
                  ]).addTranslate([
                    new Offset(-370.0, -40.0),
                    new Offset(0.0, 0.0),
                    new Offset(370.0, -40.0)
                  ]),
                  autoplay: true,
                  autoplayDelay: 3000,

                  itemBuilder: (context,i){
                    return Stack(

                      children: [
                        Center(child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                              image: ExactAssetImage(favourites[i]['iconPath'],),
                            )
                          ),
                        )),

                      ],


                    );
                  },


                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end:
                      Alignment(1.0, 1.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        Color(0xFF3A5985),
                        Color(0xff051046),
                        Color(0xff141518),


                      ], // red to yellow
                      tileMode: TileMode.repeated, // repeats the gradient over the canvas
                    ),
                  ),

                ),
              )
            ],
          ),),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Swiper(
                itemCount: 5,
                itemWidth: MediaQuery.of(context).size.width - 1.8*64,
                layout: SwiperLayout.CUSTOM,
                customLayoutOption: new CustomLayoutOption(
                    startIndex: -1,
                    stateCount: 3
                ).addRotate([
                  -45.0/180,
                  0.0,
                  45.0/180
                ]).addTranslate([
                  new Offset(-370.0, -40.0),
                  new Offset(0.0, 0.0),
                  new Offset(370.0, -40.0)
                ]),
                autoplay: true,
                autoplayDelay: 3000,

                itemBuilder: (context,i){
                  return Stack(

                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10,),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 10,
                            color: Colors.black12,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height/4,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: Text(

                                    favourites[i]['name'], style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white

                                  ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(

                                    favourites[i]['artist'], style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white

                                  ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        child: Image.asset(favourites[i]['iconPath'], width: 180,height: 180,),
                        alignment: Alignment.topCenter,
                      )
                    ],


                  );
                },


              ),

              //Image.asset(favourites[0]['iconPath'],width: 200,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: FaIcon(FontAwesomeIcons.arrowLeft), onPressed: (){
                    Navigator.pop(context);
                  }),
                  IconButton(icon: FaIcon(FontAwesomeIcons.download), onPressed: null)
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,


              children: [
                Spacer(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      hoverColor: Color.alphaBlend( Color(0xFF3A5985),Color(0xff051046)),
                      focusColor: Colors.green,
                      onTap: (){
                        print('You tapped on RaisedButton');
                      },
                      child: Row(
                        children: [
                          Text("1", style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),),
                          SizedBox(width: 20,),
                          Text("Billboards Hot 100",style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      hoverColor: Color.alphaBlend( Color(0xFF3A5985),Color(0xff051046)),
                      onTap: (){
                        print('You tapped on RaisedButton');
                      },
                      child: Row(
                        children: [
                          Text("1", style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),),
                          SizedBox(width: 20,),
                          Text("Billboards Hot 100",style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      hoverColor: Color.alphaBlend( Color(0xFF3A5985),Color(0xff051046)),
                      onTap: (){
                        print('You tapped on RaisedButton');
                      },
                      child: Row(
                        children: [
                          Text("1", style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),),
                          SizedBox(width: 20,),
                          Text("Billboards Hot 100",style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      hoverColor: Color.alphaBlend( Color(0xFF3A5985),Color(0xff051046)),
                      onTap: (){
                        print('You tapped on RaisedButton');
                      },
                      child: Row(
                        children: [
                          Text("1", style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),),
                          SizedBox(width: 20,),
                          Text("Billboards Hot 100",style: TextStyle(
                              color: Colors.white54,
                              fontSize: 30
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,)




              ],
            ),
          ),

      ],
      ),
    );
  }
}
