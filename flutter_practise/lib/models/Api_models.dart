import 'package:json_annotation/json_annotation.dart';

class Model{
  String first_name;
  String last_name;
  String id;
  String email;
  String image;
  Model({required this.first_name,required this.last_name,required this.id,required this.email,required this.image});
// factory Model.fromJson(Map<String,dynamic>json)=>_$ModelFromJson(json);
// Map<String,dynamic>toJson()=>_$ModelToJson(this);
}