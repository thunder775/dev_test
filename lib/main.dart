import 'package:dev_test/page_2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page2())),
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.orange, fontSize: 17),
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Randomised Person",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('assets/bck.jpg'),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 0,
                  left: 0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/person.png'),
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: 15,
                                bottom: 15,
                                child: Image(
                                  width: 30,
                                  image: AssetImage('assets/star.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  headerText(
                                      mainText: "69",
                                      subText: '%',
                                      footerText: 'LIFE RATE'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: headerText(
                                        mainText: "21",
                                        subText: 'Yrs',
                                        footerText: 'EXPERIENCE'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: headerText(
                                    mainText: "93",
                                    subText: '%',
                                    footerText: 'LAZINESS RATE'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                separator(context),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Lorem Ipsum dolor lorem",
                        style: headingTextStyle(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.style,
                              color: Colors.red,
                              size: 26,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Lorem Ipsum dolor',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                separator(context),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
                  child: Text(
                    'Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ',
                    style: TextStyle(fontSize: 14, height: 1.5, wordSpacing: 1,fontWeight: FontWeight.w300),
                  ),
                ),
                separator(context),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Your Yam Potatoes",
                            style: headingTextStyle(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sun 5 - Sat 11",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                      yamRow(
                          inequities: 14,
                          leadText: "Lorem ipsum dolo",
                          percent: 63,
                          padding: 16),
                      yamRow(
                          inequities: 14,
                          leadText: "Maternity",
                          percent: 65,
                          padding: 16),
                      yamRow(
                          inequities: 14,
                          leadText: "Randomly",
                          percent: 21,
                          padding: 16),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, bottom: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Your Rice Granies",
                              style: headingTextStyle(),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sun 5 - Sat 11",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      riceGraniesRow(
                          percent: 68, clicks: 8, views: 23, image: "flowers"),
                      riceGraniesRow(
                          percent: 49, clicks: 1, views: 15, image: "cake"),
                      riceGraniesRow(
                          percent: 34, clicks: 0, views: 5, image: "cake2"),
                      riceGraniesRow(
                          percent: 2, clicks: 0, views: 2, image: "cake3"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding riceGraniesRow({int views, int clicks, int percent, String image}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/' + image + '.png'),
            width: 80,
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      text: views.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.7),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "  " + "Views",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: .5,
                              color: Colors.grey),
                        )
                      ]),
                ),
                RichText(
                  text: TextSpan(
                      text: clicks.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.7),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "  " + "Click-throughs",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: .5,
                              color: Colors.grey),
                        )
                      ]),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                percentIndicator(percent),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget yamRow(
      {String leadText, int inequities, int percent, double padding}) {
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Row(
        children: <Widget>[
          Container(
            width: 130,
            height: 25,
            child: Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFF2F2F2),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        leadText,
                        style: TextStyle(color: Colors.black.withOpacity(.7),fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RichText(
                text: TextSpan(
                    text: inequities.toString(),
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.black.withOpacity(.7),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "  " + "inquiries",
                        style: TextStyle(
                            fontSize: 13,
                            letterSpacing: .5,
                            color: Colors.grey),
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                percentIndicator(percent),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget percentIndicator(int percent) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Stack(
            children: <Widget>[
              Container(
                width: 80,
                color: Colors.grey.withOpacity(.4),
                height: 5,
              ),
              Container(
                width: .8*percent,
                color: Colors.grey,
                height: 5,
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
              text: percent.toString() + "%",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(.7),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "  " + "Active",
                  style: TextStyle(
                      fontSize: 12.5, letterSpacing: .5, color: Colors.grey),
                )
              ]),
        )
      ],
    );
  }

  TextStyle headingTextStyle() {
    return TextStyle(fontSize: 17, color: Colors.black, height: 1);
  }

  Container separator(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      color: Colors.grey.withOpacity(.4),
    );
  }

  Column headerText({String mainText, String subText, String footerText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: mainText,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: subText,
                  style: TextStyle(fontSize: 13),
                )
              ]),
        ),
        Text(
          footerText,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}
