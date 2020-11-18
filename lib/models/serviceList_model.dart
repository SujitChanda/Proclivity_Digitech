import 'package:flutter/material.dart';

class ServiceItemsModel {
  final int id;
  final String image;
  final String itemName;
 

  ServiceItemsModel({
    @required this.id,
    @required this.image,
    @required this.itemName,
   
  });
}

List<ServiceItemsModel> serviceItemsModel = [
  ServiceItemsModel(
      id: 1,
      image: "assets/serviceImages/app_development.png",
      itemName: 'App Development',
      ),
  ServiceItemsModel(
      id: 2,
      image: "assets/serviceImages/digital_Marketing.png",
      itemName: 'Digital Marketing',
     ),
  ServiceItemsModel(
      id: 3,
      image: "assets/serviceImages/software_development.png",
      itemName: 'Software Development',
     ),
  ServiceItemsModel(
      id: 4,
      image: "assets/serviceImages/web_consulting.png",
      itemName: 'Web Consulting',
     ),
      ServiceItemsModel(
      id: 5,
      image: "assets/serviceImages/web_development.png",
      itemName: 'Web Development',
     ),
      ServiceItemsModel(
      id: 6,
      image: "assets/serviceImages/web_hosting.png",
      itemName: 'Web Hosting',
     ),
      ServiceItemsModel(
      id: 7,
      image: "assets/serviceImages/wifi_marketing.png",
      itemName: 'Wifi Marketing',
     ),
];
