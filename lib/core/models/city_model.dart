import 'package:flutter/cupertino.dart';

class CityModel {
  final int id;
  final String name;
  final VoidCallback onTap;
  CityModel({required this.id, required this.name, required this.onTap});
}

List<CityModel> mCityModel = [
  CityModel(id: 1, name: 'Aşgabat', onTap: () {}),
  CityModel(id: 2, name: 'Ahal', onTap: (){}),
  CityModel(id: 3, name: 'Mary', onTap: (){}),
  CityModel(id: 4, name: 'Lebap', onTap: (){}),
  CityModel(id: 5, name: 'Daşoguz', onTap: (){}),
  CityModel(id: 6, name: 'Balkan', onTap: (){}),
];
