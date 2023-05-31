import 'package:json_annotation/json_annotation.dart';
import 'package:json_demo/demoJson/autoMethod/model/address.dart';

part 'person.g.dart';

@JsonSerializable(explicitToJson:true)
class Person{
  final String name;
  final int age;
  final Address address;

  Person(this.name, this.age, this.address);

  factory Person.fromJson(Map<String,dynamic> json)=> _$PersonFromJson(json);

  Map<String, dynamic> toJson()=> _$PersonToJson(this);
}