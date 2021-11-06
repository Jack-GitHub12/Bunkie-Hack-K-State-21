import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4,clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.all(20),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'lib/assets/example_profile_pic.JPG',
                height: 60,
                width: 60,
                fit: BoxFit.fitWidth,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Helen, 21',style: GoogleFonts.montserrat(fontSize:22,color: Colors.black)),
                
                Text('Iowa State',style: GoogleFonts.montserrat(fontSize:22,color: Colors.black))
              ],
            )
          ],
        ),
      ),
    );
  }
}