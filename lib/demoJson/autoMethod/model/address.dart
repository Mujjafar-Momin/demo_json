import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(explicitToJson:true)
class Address{
  final String city;
  final String state;

    Address(this.city, this.state);
    factory Address.fromJson(Map<String,dynamic> json)=> _$AddressFromJson(json);
    Map<String,dynamic> toJson()=> _$AddressToJson(this);
}