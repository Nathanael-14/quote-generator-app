import 'package:flutter/material.dart';
import 'dart:math';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

enum Gender { Male, Female }

class _MainScreenState extends State<MainScreen> {
  bool isVisible = false;
  bool isOgre = false;
  bool isInvoker = false;
  bool isMirana = false;
  bool isPudge = false;
  bool isLion = false;

  List<String> ogreArr = [
    'They picked me! No one ever picks me.',
    'I\'m the Ogre Magi! No, you are!',
    'When can I hit something? Who\'s stopping ya?',
    'Running\'s not as fun as hitting. Not one bit fun.',
    'We got your number! What comes after two?'
  ];
  T getOgreElement<T>(List<T> list) {
    final ogreRandom = new Random();
    var io = ogreRandom.nextInt(ogreArr.length);
    return list[io];
  }

  List<String> invokerArr = [
    'Did I hear a squeak?',
    'I am a beacon of knowledge blazing out across a black sea of ignorance.',
    'Quas Wex Exort!',
    'The errant cosmos works against me!',
    'Darkness and ignorance take you all!'
  ];
  T getInvokerElement<T>(List<T> list) {
    final invokerRandom = new Random();
    var ii = invokerRandom.nextInt(invokerArr.length);
    return list[ii];
  }

  List<String> miranaArr = [
    'Look how the prey scatters before us.',
    'Moon, shine on our endeavor!',
    'I could have hit Roshan with my eyes closed.',
    'Moonlight Shadow conceal us!',
    'They should have run while they had the chance.'
  ];
  T getMiranaElement<T>(List<T> list) {
    final miranaRandom = new Random();
    var im = miranaRandom.nextInt(miranaArr.length);
    return list[im];
  }

  List<String> pudgeArr = [
    'Ahhh…fresh meat!',
    'Mmm. Smell the fresh air.',
    'Come to Pudge!',
    'Look who\'s coming for dinner!',
    'This edge is nice and sharp.'
  ];
  T getPudgeElement<T>(List<T> list) {
    final pudgeRandom = new Random();
    var ip = pudgeRandom.nextInt(pudgeArr.length);
    return list[ip];
  }

  List<String> lionArr = [
    'All hell\'s broken loose, and I hold the pieces.',
    'Ooooh, time for strong-arm tactics.',
    'Oh, such strength is mine!',
    'You thought to tame the lion?',
    'When you get to hell, tell them I sent you.'
  ];
  T getLionElement<T>(List<T> list) {
    final lionRandom = new Random();
    var il = lionRandom.nextInt(lionArr.length);
    return list[il];
  }

  var randomQuote = "Get Inspired by DOTA 2 Quotes";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7E1212),
          title: Text(
            "DOTA 2 Quote Generator",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                ),
                TextButton(
                  child: Text('Ogre Magi'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.grey,
                      textStyle: TextStyle(fontSize: 20),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                      isOgre = true;
                      isLion = false;
                      isInvoker = false;
                      isMirana = false;
                      isPudge = false;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: Text('Invoker'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.grey,
                      textStyle: TextStyle(fontSize: 20),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                      isInvoker = true;
                      isOgre = false;
                      isLion = false;
                      isMirana = false;
                      isPudge = false;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: Text('Mirana'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.grey,
                      textStyle: TextStyle(fontSize: 20),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                      isMirana = true;
                      isOgre = false;
                      isInvoker = false;
                      isLion = false;
                      isPudge = false;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: Text('Pudge'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.grey,
                      textStyle: TextStyle(fontSize: 20),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                      isPudge = true;
                      isOgre = false;
                      isInvoker = false;
                      isMirana = false;
                      isLion = false;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: Text('Lion'),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      onSurface: Colors.grey,
                      textStyle: TextStyle(fontSize: 20),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                      isLion = true;
                      isOgre = false;
                      isInvoker = false;
                      isMirana = false;
                      isPudge = false;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: isVisible,
                  child: TextButton(
                    child: Text('Get Quote'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFF7E1212),
                        onSurface: Colors.grey,
                        textStyle: TextStyle(fontSize: 20),
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                    onPressed: () {
                      if (isOgre) {
                        randomQuote = getOgreElement(ogreArr);
                      }
                      if (isInvoker) {
                        randomQuote = getInvokerElement(invokerArr);
                      }
                      if (isMirana) {
                        randomQuote = getMiranaElement(miranaArr);
                      }
                      if (isPudge) {
                        randomQuote = getPudgeElement(pudgeArr);
                      }
                      if (isLion) {
                        randomQuote = getLionElement(lionArr);
                      }
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '$randomQuote',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
