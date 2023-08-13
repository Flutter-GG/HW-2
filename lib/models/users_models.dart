//import 'package:flutter/material.dart';

class UsersModel {
 int? id;
  String? name;
  String? title;
  String? date;
  String? details;
  String? profile;
  String? image;

  UsersModel(
      {this.id,
      this.name,
      this.title,
      this.date,
      this.details,
      this.profile,
      this.image});

  UsersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    date = json['date'];
    details = json['details'];
    profile = json['profile'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['date'] = this.date;
    data['details'] = this.details;
    data['profile'] = this.profile;
    data['image'] = this.image;
    return data;
  }
}