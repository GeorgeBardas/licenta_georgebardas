import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licenta_georgebardas/models/purchase.dart';
import 'package:licenta_georgebardas/repositories/purchase_repository.dart';

part 'admin_orders_cubit.freezed.dart';
part 'admin_orders_state.dart';

class AdminOrdersCubit extends Cubit<AdminOrdersState> {
  AdminOrdersCubit() : super(const AdminOrdersState());

  Future<void> getOrders() async {
    emit(state.copyWith(isLoading: true));

    emit(
      state.copyWith(
        orders: await PurchaseRepository().getOrders(),
      ),
    );

    emit(state.copyWith(isLoading: false));
  }
}
