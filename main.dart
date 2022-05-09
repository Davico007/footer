import 'package:flutter/material.dart';
import 'package:footer_class/about.dart';
import 'package:footer_class/contact.dart';
import 'package:footer_class/notification.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const FooterClass());
}

class FooterClass extends StatefulWidget {
  const FooterClass({ Key? key }) : super(key: key);

  @override
  State<FooterClass> createState() => _FooterClassState();
}

class _FooterClassState extends State<FooterClass> {

  // AudioPlayer audioPlayer= AudioPlayer();
  // play() async{
  //   await audioPlayer.play(
  //     'assets/audio/Brandi_Carlile_Carried_Me_with_You.mp3'
  //   );
  // }
  
  // @override
  // void initState() {
  //   super.initState();
  //   play();
  // }
  

  int currentIndex=0;
  List<Widget> views =[
    
    AboutScreen(),
    ContactScreen(),
    NotificationScreen()
  ];

  PageController pager = PageController();

  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FOOTER CLASS'),
          
        ),
        body: PageView(
          onPageChanged: (nextIndex){
            setState(() {
              currentIndex=nextIndex;
            });
          },
          controller: pager,
          children: views,
        ),
        // IndexedStack(
        //   index: currentIndex,
        //   children: [
        //     views[currentIndex]
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
              pager.jumpToPage(index);
            });
          },
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'home'),
    
             BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'about'),
            
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'contact'),
    
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'notification'),
            
          ]
        ),
      ),
    );
  }
}