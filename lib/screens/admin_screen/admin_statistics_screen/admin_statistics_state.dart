part of 'admin_statistics_cubit.dart';

@freezed
class AdminStatisticsState with _$AdminStatisticsState {
  const factory AdminStatisticsState({
    @Default(false) bool isLoading,
    @Default(null) List<Purchase>? orders,
    @Default([]) List<TimeSeriesSales> chartData,
  }) = _AdminStatisticsState;
}
