import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:licenta_georgebardas/screens/orders_screen/orders_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.my_orders ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: BlocProvider(
        create: (context) => OrdersCubit()..getOrders(),
        child: BlocBuilder<OrdersCubit, OrdersState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: !state.isLoading
                      ? RefreshIndicator(
                          onRefresh: context.read<OrdersCubit>().getOrders,
                          child: ListView.builder(
                              itemCount: state.orders?.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 15),
                                        Icon(Icons.star_border),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                DateFormat(DateFormat
                                                        .YEAR_ABBR_MONTH_DAY)
                                                    .format(
                                                  DateTime
                                                      .fromMicrosecondsSinceEpoch(
                                                          int.parse(state
                                                                  .orders![
                                                                      index]
                                                                  .timestamp) *
                                                              1000),
                                                ),
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                "${state.orders?[index].price} RON",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                          padding: EdgeInsets.all(15),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: state.orders![index].productsId
                                          .map((e) => Text(e))
                                          .toList(),
                                    )
                                  ],
                                );
                              }),
                        )
                      : Center(child: CircularProgressIndicator()),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
