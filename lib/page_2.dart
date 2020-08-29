import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  @override
  TabController tabController;
  TabController tabController2;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController2 = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 16),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page2())),
              child: Image(
                image: AssetImage('assets/person.png'),
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Task Requests",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.add_alert,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            indicatorColor: Colors.orange,
            tabs: <Widget>[
              Container(
                child: Image(
                  height: 45,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/heart_beat.png'),
                ),
              ),
              Container(
                child: Image(
                  height: 45,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/tie.png'),
                ),
              ),
              Container(
                child: Image(
                  height: 45,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/hand_shake.png'),
                ),
              ),
              Container(
                child: Image(
                  height: 45,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/search.png'),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(),
                    ],
                  ),
                ),
                ListView(
                  children: <Widget>[
                    Container(
                      height: 230,
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            indicatorColor: Colors.orange,
                            controller: tabController2,
                            tabs: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:12.0,bottom: 8,left: 8,right: 8),
                                child: Text(
                                  "PENDING TASK",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:12.0,bottom: 8,left: 8,right: 8),
                                child: Text(
                                  "COMPLETED TASK",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                              child: TabBarView(
                            controller: tabController2,
                            children: <Widget>[
                              Container(
                                  color: Color(0xFFF8F8F8),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16.0, left: 32, right: 32),
                                    child: Column(
                                      children: <Widget>[
                                        Image(
                                          image:
                                              AssetImage('assets/caution.png'),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Text(
                                            "You have already 3 tasks to Complete.\nHurry and get on them before it's too late\nto reverse your score.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                                height: 2,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Container(
                                color: Color(0xFFF8F8F8),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    getPairs(),
                    separator(context),
                    getPairs(),
                    separator(context),
                    slidable(),
                    separator(context),
                    slidable(),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Slidable slidable() {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        height: 90,
        // color: Colors.black,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24.0, right: 24, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Amanda Frost",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.5),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "School Teacher",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.5),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "7yrs esp",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Image(
                image: AssetImage('assets/person2.png'),
                height: 48,
                fit: BoxFit.cover,
              ),
              Expanded(
                  child: Container(
                height: 2,
                color: Colors.grey,
              )),
              Image(
                image: AssetImage('assets/person2.png'),
                height: 48,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Amanda Frost",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.5),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "School Teacher",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 13.5),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "7yrs esp",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      secondaryActions: <Widget>[
        Container(
          width: 50,
          height: 90,
          color: Color(0xFF43B681),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image(
              image: AssetImage('assets/pin2.png'),
            ),
          ),
        ),
        IconSlideAction(
          color: Color(0xFFDF4741),
          icon: Icons.clear,
          onTap: () => {},
        ),
      ],
    );
  }

  Padding getPairs() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 24),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32),
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/person2.png'),
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 2,
                    color: Colors.grey,
                  ),
                )),
                Image(
                  image: AssetImage('assets/match.png'),
                  fit: BoxFit.cover,
                  height: 50,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 2,
                    color: Colors.grey,
                  ),
                )),
                Image(
                  image: AssetImage('assets/person2.png'),
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 130,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Amanda Frost",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "School Teacher",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "7yrs esp",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(17.5),
                          child: Container(
                            width: 35,
                            color: Colors.grey.withOpacity(.3),
                            height: 35,
                            child: IconButton(
                              iconSize: 16,
                              onPressed: () {},
                              icon: Icon(Icons.message),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(17.5),
                          child: Container(
                            width: 35,
                            color: Colors.grey.withOpacity(.3),
                            height: 35,
                            child: IconButton(
                              iconSize: 16,
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Amanda Frost",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "School Teacher",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "7yrs esp",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container separator(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 1,
      color: Colors.grey.withOpacity(.4),
    );
  }
}

class SlideMenu extends StatefulWidget {
  final Widget child;
  final List<Widget> menuItems;

  SlideMenu({this.child, this.menuItems});

  @override
  _SlideMenuState createState() => new _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  initState() {
    super.initState();
    _controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animation = new Tween(
            begin: const Offset(0.0, 0.0), end: const Offset(-0.2, 0.0))
        .animate(new CurveTween(curve: Curves.decelerate).animate(_controller));

    return new GestureDetector(
      onHorizontalDragUpdate: (data) {
        // we can access context.size here
        setState(() {
          _controller.value -= data.primaryDelta / context.size.width;
        });
      },
      onHorizontalDragEnd: (data) {
        if (data.primaryVelocity > 2500)
          _controller
              .animateTo(.0); //close menu on fast swipe in the right direction
        else if (_controller.value >= .5 ||
            data.primaryVelocity <
                -2500) // fully open if dragged a lot to left or on fast swipe to left
          _controller.animateTo(1.0);
        else // close if none of above
          _controller.animateTo(.0);
      },
      child: new Stack(
        children: <Widget>[
          new SlideTransition(position: animation, child: widget.child),
          new Positioned.fill(
            child: new LayoutBuilder(
              builder: (context, constraint) {
                return new AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return new Stack(
                      children: <Widget>[
                        new Positioned(
                          right: .0,
                          top: .0,
                          bottom: .0,
                          width: constraint.maxWidth * animation.value.dx * -1,
                          child: new Container(
                            color: Colors.black26,
                            child: new Row(
                              children: widget.menuItems.map((child) {
                                return new Expanded(
                                  child: child,
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
