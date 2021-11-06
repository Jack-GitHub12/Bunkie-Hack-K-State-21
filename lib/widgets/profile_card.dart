import 'package:bunkie/widgets/controls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard();

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(left:10,right: 10,top: 20,bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Image.asset('lib/assets/example_profile_pic.JPG',
        fit: BoxFit.cover,

        ),
        Positioned(
          bottom: 30,
          left:30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('21',style: GoogleFonts.montserrat(fontSize:30,color: Colors.white),),
                SizedBox(height: 5,),
                Text('Helen',style: GoogleFonts.montserrat(fontSize:32,color: Colors.white)),
                
              ],),
              SizedBox(
                width: MediaQuery.of(context).size.width-120,
                child: Controls())
            ],
          ),
          )
      ],));
  }
}
