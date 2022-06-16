import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/purchase.dart';
import 'package:licenta_georgebardas/models/time_series_sales.dart';
import 'package:licenta_georgebardas/repositories/purchase_repository.dart';

part 'admin_statistics_cubit.freezed.dart';
part 'admin_statistics_state.dart';

class AdminStatisticsCubit extends Cubit<AdminStatisticsState> {
  AdminStatisticsCubit() : super(const AdminStatisticsState());

  Future<void> getOrders() async {
    emit(state.copyWith(isLoading: true));

    emit(
      state.copyWith(
        orders: await PurchaseRepository().getOrders(),
      ),
    );
    _getChartData();

    emit(state.copyWith(isLoading: false));
  }

  void _getChartData() {
    Map<DateTime, double> sumPerMonth = {};
    List<TimeSeriesSales> sales = [];
    state.orders?.forEach((order) {
      int month =
          DateTime.fromMillisecondsSinceEpoch(int.parse(order.timestamp)).month;
      int year =
          DateTime.fromMillisecondsSinceEpoch(int.parse(order.timestamp)).year;

      if (!sumPerMonth.keys.contains(DateTime(year, month))) {
        sumPerMonth[DateTime(year, month)] = order.price;
      } else {
        sumPerMonth[DateTime(year, month)] =
            sumPerMonth[DateTime(year, month)]! + order.price;
      }
    });
    SplayTreeMap<DateTime, double>.from(sumPerMonth).forEach((key, value) {
      sales.add(TimeSeriesSales(key, value.toInt()));
    });
    emit(state.copyWith(chartData: sales));
  }
}
