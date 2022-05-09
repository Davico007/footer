import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ContactScreen extends 
StatefulWidget {
  const ContactScreen({ Key? key }) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

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

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('CONTACT PAGE'),
    );
  }
}