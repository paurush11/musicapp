
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../Config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double zOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, zOffset)..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 30.0)),
      child: SingleChildScrollView(
        child: Container(

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                zOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 180;
                                yOffset = 70;
                                zOffset = 0;
                                scaleFactor = 0.8;
                                isDrawerOpen = true;
                              });
                            }),
                    Column(
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: secondaryColor,
                            ),
                            Text('Ukraine'),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: secondaryColor,
                    )
                  ],
                ),
              ),


              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: 250,
              //     child: Row(
              //       children: [
              //         Container(
              //           width: MediaQuery.of(context).size.width-16,
              //           child: Swiper(
              //             itemCount: 5,
              //             itemWidth: MediaQuery.of(context).size.width - 2.5*64,
              //             layout: SwiperLayout.STACK,
              //             autoplay: true,
              //             autoplayDelay: 3000,
              //               pagination: new SwiperPagination(
              //                 margin: EdgeInsets.symmetric(vertical: 0),
              //                   alignment: Alignment.bottomCenter,
              //                   builder:  new DotSwiperPaginationBuilder(
              //                       color: Colors.black12,
              //                       activeColor: Colors.black38,
              //                       size: 10.0,
              //                       activeSize: 20.0)
              //               ),
              //             itemBuilder: (context,i){
              //               return Stack(
              //
              //                   children: [
              //                     Column(
              //                       children: [
              //                         SizedBox(height: 10,),
              //                         Card(
              //                           shape: RoundedRectangleBorder(
              //                               borderRadius: BorderRadius.circular(20)
              //                           ),
              //                           elevation: 8,
              //                           color: Colors.purple,
              //                           child: Column(
              //                             children: [
              //                               SizedBox(
              //                                 height: MediaQuery.of(context).size.height/6,
              //                                 width: MediaQuery.of(context).size.width,
              //                               ),
              //                               Padding(
              //                                 padding: const EdgeInsets.all(10.0),
              //                                 child: Text(
              //                                   categories[i]['name'], style: TextStyle(
              //                                   fontSize: 40,
              //
              //                                 ),
              //                                   textAlign: TextAlign.center,
              //                                 ),
              //                               )
              //
              //                             ],
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                     Image.asset(categories[i]['iconPath'], width: 200,height: 100,)
              //                   ],
              //
              //
              //               );
              //             },
              //
              //
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-16,
                        child: Swiper(
                          itemCount: 5,
                          itemWidth: MediaQuery.of(context).size.width - 2.5*64,
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
                          pagination: new SwiperPagination(
                              margin: EdgeInsets.symmetric(vertical: 0),
                              alignment: Alignment.bottomCenter,
                              builder:  new DotSwiperPaginationBuilder(
                                  color: Colors.black12,
                                  activeColor: Colors.black38,
                                  size: 10.0,
                                  activeSize: 20.0)
                          ),
                          itemBuilder: (context,i){
                            return Stack(

                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      elevation: 8,
                                      color: Colors.black12,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height/5,
                                            width: MediaQuery.of(context).size.width,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              genres[i]['name'], style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white

                                            ),
                                              textAlign: TextAlign.center,
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                    child: Image.asset(genres[i]['iconPath'], width: 150,height: 150,),
                                alignment: Alignment.topCenter,
                                )
                              ],


                            );
                          },


                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Top Trending", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context,i){
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: MediaQuery.of(context).size.height/6,
                              width: MediaQuery.of(context).size.width/4,
                              decoration: BoxDecoration(color: Colors.blueGrey, boxShadow: shadowList, borderRadius: BorderRadius.circular(20),),
                              child: Stack(children: [

                              ],),
                            );
                          }
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Your Favourite", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: shadowList
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context,i){
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width/2,
                              decoration: BoxDecoration(color: Colors.grey[300], boxShadow: shadowList, borderRadius: BorderRadius.circular(20),),
                              child: Stack(children: [
                                Image.asset(favourites[i]['iconPath'])

                              ],),
                            );
                          }
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),

              Row(
                children: [
                  Container(),
                  Container()
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
