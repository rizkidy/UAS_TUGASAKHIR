import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../sidebar.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
        title: Text(
          'COVID-19 VIRUS TRACKER',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'))
        ],
      ),
      // drawer:  _buildDrawer(),
      body: ListView(
        children: [
          Container(
            height: 477,
            width: 382.0,
            // height: MediaQuery.of(context).size.height / 1.7,
            // width: double.infinity,
            margin: EdgeInsets.fromLTRB(25, 20, 25, 20),
            decoration: const BoxDecoration(
              color: Color(0xffE4E4E4),
              // borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: 2),
              ],
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 202,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  // width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 4,
                  // margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          spreadRadius: 0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Current Stats',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Reported\n  Cased',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: SvgPicture.asset(
                                      'assets/icons/virus.svg'),
                                  height: 28,
                                  width: 28,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '4,14,476',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.all(10),
                              width: 2,
                              color: Colors.black,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Reporthed\n    Deats',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child:
                                      Image.asset('assets/images/poison.png'),
                                  height: 28,
                                  width: 28,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '18,605',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 350,
                  height: 202,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  // width: double.infinity,
                  // height: MediaQuery.of(context).size.height / 4,
                  // margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(1, 1),
                          blurRadius: 3,
                          spreadRadius: 0),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 115,
                        right: 30,
                        child: Container(
                          height: 13,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              // gradient: LinearGradient(
                              //     colors: [Colors.purple, Colors.red],
                              //     begin: Alignment.topLeft,
                              //     end: Alignment.bottomRight),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('See More',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.black)),
                                    Image.asset('assets/images/arrow2.png')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Text(
                            'Corona Virus Measures To Take',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            height: 30,
                            width: 220,
                            child: Text(
                              'Stay aware of the latest measures to prevent COVID-19 outbreak',
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Spacer(
                                  flex: 2,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    'assets/images/Orang.png',
                                    fit: BoxFit.contain,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Text(
                                      'Wear a facemask',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 165,
                                      child: Text(
                                        'You should always wear a facemask when you are around other people.',
                                        style: TextStyle(fontSize: 10),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(
                                  flex: 10,
                                ),
                              ]),
                          Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            width: 352,
            height: 100,
            decoration: BoxDecoration(
              // color: Colors.black,
              color: Color(0xffD7F3F6),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Spacer(flex: 1),
                    Image.asset('assets/images/italia.png'),
                    Spacer(flex: 2),
                    Text(
                      'Italy',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 10,
                    ),
                    Image.asset('assets/images/Group 14.png'),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 205,
                  child: Text('• 74,386 infected cases reported',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 205,
                  child: Text('• 7,503 death cases reported',
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row get bagian1 {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              'Reported\n  Cased',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SvgPicture.asset('assets/icons/virus.svg'),
              height: 30,
              width: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '4,14,476',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Container(
          height: 100,
          margin: EdgeInsets.all(10),
          width: 2,
          color: Colors.black,
        ),
        Column(
          children: [
            Text(
              'Reporthed\n    Deats',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset('assets/images/poison.png'),
              height: 30,
              width: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '18,605',
              style: TextStyle(fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
