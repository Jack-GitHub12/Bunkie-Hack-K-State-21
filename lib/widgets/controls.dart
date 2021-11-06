import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  final void Function()? like;
  final void Function()? chat;
  final void Function()? dislike;

  Controls({this.like, this.chat, this.dislike});
  final double buttonHeight = 40;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          GestureDetector(
            onTap:like,
            child: Container(
              height: buttonHeight,
              width: buttonHeight,
              child: Center(child: Icon(Icons.check,color: Colors.green[300],size: buttonHeight-10,),),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(buttonHeight/2)),
            ),
          ),
          SizedBox(width: 50,),
          GestureDetector(
            onTap:chat,
            child: Container(
              height: buttonHeight,
              width: buttonHeight,
              child: Center(child: Icon(Icons.chat,color: Colors.blue[300],size: buttonHeight-10,),),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(buttonHeight/2)),
            ),
          ),
          SizedBox(width: 50,),
          GestureDetector(
            onTap:dislike,
            child: Container(
              height: buttonHeight,
              width: buttonHeight,
              child: Center(child: Icon(Icons.close,color: Colors.red[300],size: buttonHeight-10,),),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(buttonHeight/2)),
            ),
          ),
          
        ],
      ),
    );
  }
}
