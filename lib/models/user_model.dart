import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';


class UserModel extends Equatable {
  final String? uid;
  
  final String? displayName;
  final String? email;
  
  final DateTime? birthday;
  final String? gender;

  final String? photoURL;
  
 
  final String? bio;
  final DateTime createdAt;
  final String? cityName;
  final bool? isLocationPermitted;
  
  final String token;

  UserModel({
    required this.uid,
   
    required this.displayName,
    required this.email,
  
    @required this.birthday,
    @required this.gender,
    required this.photoURL,
   
    required this.createdAt,
    
    this.bio,
    this.cityName,
    this.isLocationPermitted,
    required this.token,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    var data = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      uid: snapshot.id,
      
      displayName: data['displayName'],
      email: data['email'],
     
      birthday: data['birthday'] == null
          ? null
          : DateTime.parse(data['birthday'] as String),
      gender: data['gender'],
      photoURL: data['photoURL'],
     
      
      bio: data['bio'],
      createdAt: DateTime.parse(data['createdAt'] as String),
      cityName: data['cityName'],
      isLocationPermitted: data['isLocationPermitted'],
      token: data['token'],
    );
  }
  UserModel copyWith({
    String? uid,
    
    String? displayName,
    String? email,
    String? phoneNumber,
    DateTime? birthday,
    String? gender,
    String? photoURL,
   
  
    String? bio,
    DateTime? createdAt,
    String? cityName,
    bool? isLocationPermitted,
   
    String? token,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      
      displayName: displayName ?? this.displayName ?? this.displayName,
      email: email ?? this.email,
     
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      photoURL: photoURL ?? this.photoURL,
      
      bio: bio ?? this.bio,
      createdAt: createdAt ?? this.createdAt,
      cityName: cityName ?? this.cityName,
      isLocationPermitted: isLocationPermitted ?? this.isLocationPermitted,
      
      token: token ?? this.token,
    );
  }

  factory UserModel.empty() {
    return UserModel(
      uid: '',
      
      displayName: '',
      email: '',
      photoURL: '',
     
      createdAt: DateTime.now(),
      cityName: 'New York',
      
      token: '', 
      birthday: DateTime.now(), 
      gender: '',
    );
  }
  



 

  Map<String, dynamic> toSnapshot() {
    return {
      'displayName': displayName,
      'email': email,
      
      'birthday': birthday?.toIso8601String(),
      'gender': gender,
      'photoURL': photoURL,
      
      'bio': bio,
      'createdAt': createdAt.toIso8601String(),
      'cityName': cityName,
      'isLocationPermitted': isLocationPermitted,
     
      'token': token,
    };
  }

  
  @override
  List<Object?> get props => [
        uid,
        email,
       
        birthday,
        gender,
        photoURL,
       
        bio,
        createdAt,
        isLocationPermitted,
     
        token,
      ];
}




