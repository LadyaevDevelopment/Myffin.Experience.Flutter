// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "dart:convert";
import "dart:typed_data";

class PhotoModel {
  String name;

  Uint8List photo;

  PhotoModel({required this.name, required this.photo});

  factory PhotoModel.fromJson(dynamic json) => PhotoModel(
      name: json['name'] as String,
      photo: base64Decode(json['photo'] as String),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'name': name,
	  'photo': base64Encode(photo),
	};
}
