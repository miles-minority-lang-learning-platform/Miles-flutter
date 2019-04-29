import 'package:flutter/material.dart';
import 'confirm_solo.dart';
import 'confirm_multi.dart';

class AgencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.red[300],
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage("assets/images/menu.png"),
                        color: Colors.white,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/images/coin.png"),
                            height: 35,
                          ),
                          CoinStatus()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 150),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "请选择学习模式",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            // onTap: () => {
                            //       Navigator.push(context,
                            //           PageRouteBuilder(pageBuilder: (
                            //         BuildContext context,
                            //         Animation animation,
                            //         Animation secondaryAnimation,
                            //       ) {
                            //         return FadeTransition(
                            //           opacity: animation,
                            //           child: Scaffold(
                            //             body: ConfirmSoloPage(),
                            //           ),
                            //         );
                            //       }))
                            //     },
                            onTap: () => {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (BuildContext context) {
                                  //     return ConfirmSoloPage();
                                  //   }),
                                  // )
                                  Navigator.pushNamed(context, "/tomato/solo")
                                },
                            // child: Hero(
                            // tag: "tomato",
                            child: Stack(
                              fit: StackFit.passthrough,
                              alignment: Alignment.center,
                              children: <Widget>[
                                Hero(
                                  tag: "tomato-circle",
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 60,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: SizedBox(
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                ),
                                Hero(
                                  tag: "tomato",
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/tomato.png"),
                                    height: 80,
                                  ),
                                ),
                              ],
                            ),
                            // ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () => {
                                  Navigator.push(context,
                                      PageRouteBuilder(pageBuilder: (
                                    BuildContext context,
                                    Animation animation,
                                    Animation secondaryAnimation,
                                  ) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: Scaffold(
                                        body: ConfirmMultiPage(),
                                      ),
                                    );
                                  }))
                                },
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Hero(
                                  tag: "group-circle",
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 60,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: SizedBox(
                                      height: 120,
                                      width: 120,
                                    ),
                                  ),
                                ),
                                Hero(
                                  tag: "group",
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/group.png"),
                                    height: 80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class CoinStatus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CoinStatusState();
  }
}

class CoinStatusState extends State<CoinStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "20",
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
