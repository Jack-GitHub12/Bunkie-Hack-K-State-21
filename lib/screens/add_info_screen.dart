import 'package:bunkie/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBioScreen extends StatefulWidget {
  final UserModel user;
  const AddBioScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _AddBioScreenState createState() => _AddBioScreenState();
}

class _AddBioScreenState extends State<AddBioScreen> {
  late TextEditingController _bioController;

  
  @override
  void initState() {
    super.initState();

    _bioController = TextEditingController();
    _bioController.text = widget.user.bio ?? '';

    _bioController.addListener(() {
      
    });
    final _temAddBio = widget.user.bio;
    
  }

  Widget _showAddBioInput(
    BuildContext context,
   
  ) {
    return TextField(
        keyboardType: TextInputType.text,
    
      decoration: InputDecoration(

        hintText: 'Bio',
        ),
        
        maxLines: 7,
        controller: _bioController,
        
        
        
        textInputAction: TextInputAction.done,
        onChanged: (value) {
          
        });
  }

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              
              child: SafeArea(
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                      child:
                          Icon(Icons.keyboard_arrow_left, color: Colors.black),
                    ),
                    Text('Back',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500))
                  ],
                ),
              ),),
                    Spacer(),
                    Text(
                      'Add Bio',
                      
                    ),
                    Spacer(),
                     IconButton(
                          icon:  Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                          onPressed: (){}
                      
                      
                    )
                  ],
                ),
              ),
            )),
        body: _buildBody(),
    
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              _showAddBioInput(context,),
              Spacer(flex: 20)
            ],
          )
        
    
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class LowerCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}
