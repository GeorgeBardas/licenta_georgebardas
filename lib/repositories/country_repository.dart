import 'package:dio/dio.dart';
import 'package:licenta_georgebardas/models/city.dart';
import 'package:licenta_georgebardas/models/county.dart';

class CountryRepository {
  Future<List<County>> getCounties() async {
    try {
      Response response = await Dio().get("https://roloca.coldfuse.io/judete");
      return List<County>.from(
        (response.data as List).map((e) => County.fromJson(e)).toList(),
      );
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<City>> getCities(String countyId) async {
    try {
      Response response =
          await Dio().get("https://roloca.coldfuse.io/orase/$countyId");
      return List<City>.from(
        (response.data as List).map((e) => City.fromJson(e)).toList(),
      );
    } catch (e) {
      print(e);
      return [];
    }
  }
}
