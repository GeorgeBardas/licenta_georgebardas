import 'package:flutter/material.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/city.dart';
import 'package:licenta_georgebardas/models/county.dart';

typedef CountyCallback = Function(County);
typedef CityCallback = Function(City);

class ModalHelper {
  showSelectCountyModal(
    context,
    List<County> list,
    CountyCallback callback,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, int) {
                return GestureDetector(
                  onTap: () {
                    callback.call(list[int]);
                    appRouter.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      list[int].name,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )),
                  ),
                );
              });
        });
  }

  showSelectCityModal(
    context,
    List<City> list,
    CityCallback callback,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, int) {
                return GestureDetector(
                  onTap: () {
                    callback.call(list[int]);
                    appRouter.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      list[int].name,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    )),
                  ),
                );
              });
        });
  }
}
