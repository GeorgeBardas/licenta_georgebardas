import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/purchase.dart';
import 'package:licenta_georgebardas/repositories/purchase_repository.dart';

part 'orders_cubit.freezed.dart';
part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(const OrdersState());

  Future<void> getOrders() async {
    emit(state.copyWith(isLoading: true));

    emit(
      state.copyWith(
        orders: await PurchaseRepository().getUserOrders(),
      ),
    );

    emit(state.copyWith(isLoading: false));
  }
}
