import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wrap_product_item_cubit.freezed.dart';
part 'wrap_product_item_state.dart';

class WrapProductItemCubit extends Cubit<WrapProductItemState> {
  WrapProductItemCubit() : super(const WrapProductItemState());
}
