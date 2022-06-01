part of 'home_tab_cubit.dart';

@freezed
class HomeTabState with _$HomeTabState {
  const factory HomeTabState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> products,
  }) = _HomeTabState;
}
