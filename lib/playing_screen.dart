import 'dart:io';
import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:code_breaker/myButton.dart';
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

int index = 1;
List targetlist = [
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
  Colors.grey,
];

List choises = [
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
  Colors.grey[10],
];
List en = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
bool win = false;

List color = [
  Colors.lightBlue,
  Colors.purple,
  Colors.deepPurpleAccent,
  Colors.teal,
  Colors.amber,
  Colors.pink,
];
List avoid = [];
bool Finish = true;

class PlayingScreen extends StatefulWidget {
  const PlayingScreen({Key? key}) : super(key: key);

  @override
  State<PlayingScreen> createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rand();
    print(randColors);
  }

  int blackCounter = 0;
  int whiteCounter = 0;
  List randColors = [];
  List randColorsCheck = [];

  void rand() {
    for (int i = 0; i < 4; i++) {
      randColors.add(color[Random().nextInt(5)]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(209, 149, 97, 1),
        centerTitle: true,
        title: Finish
            ? Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.brown, spreadRadius: 1, blurRadius: 2)
                  ],
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 1,
                    color: Colors.brown,
                    style: BorderStyle.solid,
                  ),
                ),
              )
            : Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: randColors[0],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: randColors[1],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: randColors[2],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: randColors[3],
                    ),
                  ],
                ),
              ),
      ),
      body: win == false
          ? Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyList(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 10,
                              blurRadius: 10)
                        ],
                        image: DecorationImage(
                            image: AssetImage('pic/brown-wooden-flooring.jpg'),
                            fit: BoxFit.fitWidth)),
                    height: 140,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Draggable<Color>(
                                child: Mycircle(color[0]),
                                feedback: Mycircle(color[0]),
                                childWhenDragging: Mycircle(Colors.grey),
                                data: color[0]),
                            SizedBox(
                              width: 2,
                            ),
                            Draggable(
                              child: Mycircle(color[1]),
                              feedback: Mycircle(color[1]),
                              childWhenDragging: Mycircle(Colors.grey),
                              data: color[1],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Draggable(
                              child: Mycircle(color[2]),
                              feedback: Mycircle(color[2]),
                              childWhenDragging: Mycircle(Colors.grey),
                              data: color[2],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Draggable(
                              child: Mycircle(color[3]),
                              feedback: Mycircle(color[3]),
                              childWhenDragging: Mycircle(Colors.grey),
                              data: color[3],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Draggable(
                              child: Mycircle(color[4]),
                              feedback: Mycircle(color[4]),
                              childWhenDragging: Mycircle(Colors.grey),
                              data: color[4],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Draggable(
                              child: Mycircle(color[5]),
                              feedback: Mycircle(color[5]),
                              childWhenDragging: Mycircle(Colors.grey),
                              data: color[5],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                          ],
                        ),
                        MyButton(
                          color: Color.fromRGBO(209, 149, 97, 1),
                          text: 'finish',
                          onPressed: () {
                            if (targetlist[4 * (index - 1)] == Colors.grey ||
                                targetlist[(4 * (index - 1)) + 1] ==
                                    Colors.grey ||
                                targetlist[(4 * (index - 1)) + 2] ==
                                    Colors.grey ||
                                targetlist[(4 * (index - 1)) + 3] ==
                                    Colors.grey) {
                              return null;
                            } else {
                              if (win == true) {

                              }
                              if (index == 11) {
                                AwesomeDialog(
                                  btnCancelText: 'end',
                                  showCloseIcon: true,
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.bottomSlide,
                                  title: 'Lose !!!',
                                  desc: 'Want to play again',
                                  btnCancelOnPress: () {
                                    exit(0);
                                  },
                                  btnOkOnPress: () {
                                    Restart.restartApp();
                                  },
                                )..show();
                              }
                              randColorsCheck = new List.from(randColors);
                              if (targetlist[(4 * (index - 1)) + 0] ==
                                  randColors[0]) {
                                blackCounter += 1;
                                avoid.add(0);
                                randColorsCheck[0] = Colors.grey[10];
                              }
                              if (targetlist[(4 * (index - 1)) + 1] ==
                                  randColors[1]) {
                                blackCounter += 1;
                                avoid.add(1);
                                randColorsCheck[1] = Colors.grey[10];
                              }
                              if (targetlist[(4 * (index - 1)) + 2] ==
                                  randColors[2]) {
                                blackCounter += 1;
                                avoid.add(2);
                                randColorsCheck[2] = Colors.grey[10];
                              }
                              if (targetlist[(4 * (index - 1)) + 3] ==
                                  randColors[3]) {
                                blackCounter += 1;
                                avoid.add(3);
                                randColorsCheck[3] = Colors.grey[10];
                              }

                              for (int i = 0; i < 4; i++) {
                                if (avoid.contains(i)) {
                                  continue;
                                }
                                ;
                                for (int j = 0; j < 4; j++) {
                                  if (avoid.contains(j)) {
                                    continue;
                                  } else {
                                    if (targetlist[(4 * (index - 1)) + i] ==
                                        randColorsCheck[j]) {
                                      whiteCounter += 1;
                                      break;
                                    }
                                  }
                                }
                              }

                              setState(() {
                                print('white=${whiteCounter}');
                                print('black=${blackCounter}');
                                switch (whiteCounter) {
                                  case 0:
                                    {
                                      switch (blackCounter) {
                                        case 0:
                                          break;
                                        case 1:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.black;
                                          }
                                          break;
                                        case 2:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.black;
                                          }
                                          break;
                                        case 3:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.black;
                                          }
                                          break;
                                        case 4:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.black;
                                            AwesomeDialog(
                                              transitionAnimationDuration: Duration(seconds: 1),
                                              btnCancelText: 'end',
                                              showCloseIcon: true,
                                              context: context,
                                              dialogType: DialogType.success,
                                              animType: AnimType.bottomSlide,
                                              title: 'Win !!!',
                                              desc: 'Want to play again',
                                              btnCancelOnPress: () {
                                                exit(0);
                                              },
                                              btnOkOnPress: () {
                                                Restart.restartApp();
                                              },
                                            )..show();
                                            Finish = false;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case 1:
                                    {
                                      switch (blackCounter) {
                                        case 0:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                          }
                                          break;
                                        case 1:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.black;
                                          }
                                          break;
                                        case 2:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.black;
                                          }
                                          break;
                                        case 3:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.black;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case 2:
                                    {
                                      switch (blackCounter) {
                                        case 0:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.white;
                                          }
                                          break;
                                        case 1:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.black;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.white;
                                          }
                                          break;
                                        case 2:
                                          {
                                            choises[(4 * (index - 1)) + 0] =
                                                Colors.black;
                                            choises[(4 * (index - 1)) + 1] =
                                                Colors.white;
                                            choises[(4 * (index - 1)) + 2] =
                                                Colors.white;
                                            choises[(4 * (index - 1)) + 3] =
                                                Colors.black;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case 3:
                                    {
                                      switch (blackCounter) {
                                        case 0:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.white;
                                          }
                                          break;
                                        case 1:
                                          {
                                            choises[4 * (index - 1) + 0] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 1] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 2] =
                                                Colors.white;
                                            choises[4 * (index - 1) + 3] =
                                                Colors.black;
                                          }
                                          break;
                                      }
                                    }
                                    break;
                                  case 4:
                                    {
                                      choises[4 * (index - 1) + 0] =
                                          Colors.white;
                                      choises[4 * (index - 1) + 1] =
                                          Colors.white;
                                      choises[4 * (index - 1) + 2] =
                                          Colors.white;
                                      choises[4 * (index - 1) + 3] =
                                          Colors.white;
                                    }
                                    break;
                                }
                              });

                              if (index <=10) {
                                setState(() {
                                  en[index - 1] = true;
                                  index += 1;
                                  if (index == 11) {
                                    AwesomeDialog(
                                      btnCancelText: 'end',
                                      showCloseIcon: true,
                                      context: context,
                                      dialogType: DialogType.error,
                                      animType: AnimType.bottomSlide,
                                      title: 'Lose !!!',
                                      desc: 'Want to play again',
                                      btnCancelOnPress: () {
                                        exit(0);
                                      },
                                      btnOkOnPress: () {
                                        Restart.restartApp();
                                      },
                                    )..show();
                                  }
                                });

                                print(blackCounter);
                                print(whiteCounter);
                                avoid.clear();
                                whiteCounter = 0;
                                blackCounter = 0;
                              }
                            }
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          : Center(
              child: Text(
                'Win !!!!!!!!!!',
                style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}

class Mycircle extends StatelessWidget {
  Mycircle(this.color);

  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 2, blurRadius: 2)
        ],
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550,
      child: ListView.builder(
          reverse: true,
          itemCount: index,
          itemBuilder: (context, index) {
            return AbsorbPointer(
              absorbing: en[index],
              child: Container(
                padding: EdgeInsets.only(left: 0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('pic/clapboard-wall.jpg'),
                        fit: BoxFit.fitWidth)),
                width: double.infinity,
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(209, 149, 97, 1),
                      radius: 15,
                      child: Text('${index + 1}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          targetlist[(4 * index) + 0] = Colors.grey;
                        });
                      },
                      child: DragTarget<Color>(
                        builder: (context, candidateData, rejectedData) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: targetlist[(4 * index) + 0],
                                  shape: BoxShape.circle),
                              height: 50.0,
                              width: 50.0,
                            ),
                          );
                        },
                        onAccept: (data) {
                          if (targetlist[(4 * index) + 0] == Colors.grey)
                            setState(() {
                              targetlist[(4 * index) + 0] = data;
                            });
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          targetlist[(4 * index) + 1] = Colors.grey;
                        });
                      },
                      child: DragTarget<Color>(
                        builder: (context, candidateData, rejectedData) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: targetlist[(4 * index) + 1],
                                  shape: BoxShape.circle),
                              height: 50.0,
                              width: 50.0,
                            ),
                          );
                        },
                        onAccept: (data) {
                          if (targetlist[(4 * index) + 1] == Colors.grey)
                            setState(() {
                              targetlist[(4 * index) + 1] = data;
                            });
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          targetlist[(4 * index) + 2] = Colors.grey;
                        });
                      },
                      child: DragTarget<Color>(
                        builder: (context, candidateData, rejectedData) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: targetlist[(4 * index) + 2],
                                  shape: BoxShape.circle),
                              height: 50.0,
                              width: 50.0,
                            ),
                          );
                        },
                        onAccept: (data) {
                          if (targetlist[(4 * index) + 2] == Colors.grey)
                            setState(() {
                              targetlist[(4 * index) + 2] = data;
                            });
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          targetlist[(4 * index) + 3] = Colors.grey;
                        });
                      },
                      child: DragTarget<Color>(
                        builder: (context, candidateData, rejectedData) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: targetlist[(4 * index) + 3],
                                  shape: BoxShape.circle),
                              height: 50.0,
                              width: 50.0,
                            ),
                          );
                        },
                        onAccept: (data) {
                          if (targetlist[(4 * index) + 3] == Colors.grey)
                            setState(() {
                              targetlist[(4 * index) + 3] = data;
                            });
                        },
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ],
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage(
                                  'pic/beige-wooden-textured-flooring-background.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: choises[((4 * index) - 1) + 1],
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    radius: 7, backgroundColor: Colors.black38),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38,
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ],
                                  color: choises[((4 * index) - 1) + 2],
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                    radius: 7, backgroundColor: Colors.black38),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 2,
                                          blurRadius: 2)
                                    ],
                                    color: choises[((4 * index) - 1) + 2],
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Colors.black38),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 2,
                                          blurRadius: 2)
                                    ],
                                    color: choises[((4 * index) - 1) + 4],
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Colors.black38),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

//
