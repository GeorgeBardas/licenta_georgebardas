import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/screens/account_screen/widgets/account_screen_item_widget.dart';
import 'package:licenta_georgebardas/utils/assets.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

import '../../router.gr.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)?.admin ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  AccountScreenItemWidget(
                    icon: AppAssets.iconOrders,
                    title: AppLocalizations.of(context)?.add_category ?? "",
                    onTap: () =>
                        appRouter.push(const AdminCategoriesScreenRoute()),
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                    thickness: 0.7,
                  ),
                  AccountScreenItemWidget(
                    icon: AppAssets.iconOrders,
                    title: AppLocalizations.of(context)?.add_product ?? "",
                    onTap: () =>
                        appRouter.push(const AdminProductsScreenRoute()),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
