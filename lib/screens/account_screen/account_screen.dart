import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:licenta_georgebardas/screens/account_screen/account_cubit.dart';
import 'package:licenta_georgebardas/screens/account_screen/widgets/account_screen_item_widget.dart';
import 'package:licenta_georgebardas/screens/account_screen/widgets/user_avatar_placeholder_widget.dart';
import 'package:licenta_georgebardas/utils/assets.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async => context.read<AccountCubit>().getUser(),
            child: state.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UserAvatarPlaceholderWidget(
                            userAvatar: state.userAvatar,
                            onPressed: () async {
                              final result = await ImagePicker().pickImage(
                                source: ImageSource.gallery,
                              );
                              if (result != null)
                                context
                                    .read<AccountCubit>()
                                    .uploadAvatar(result);
                            },
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.user?.firstName} ${state.user?.lastName}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "${state.user?.email}",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 0.7),
                      AccountScreenItemWidget(
                        icon: AppAssets.iconOrders,
                        title: AppLocalizations.of(context)?.my_orders ?? "",
                        onTap: () => context.read<AccountCubit>().goToOrders(),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 0.7,
                      ),
                      AccountScreenItemWidget(
                        icon: AppAssets.iconAccountDetails,
                        title:
                            AppLocalizations.of(context)?.account_details ?? "",
                        onTap: () =>
                            context.read<AccountCubit>().goToAccountDetails(),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 0.7,
                      ),
                      AccountScreenItemWidget(
                        icon: AppAssets.iconHome,
                        title:
                            AppLocalizations.of(context)?.delivery_addresses ??
                                "",
                        onTap: () => context
                            .read<AccountCubit>()
                            .goToDeliveryAddresses(),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 0.7,
                      ),
                      if (state.user?.isAdmin == true)
                        Column(
                          children: [
                            AccountScreenItemWidget(
                              icon: AppAssets.iconAccountDetails,
                              title: AppLocalizations.of(context)?.admin ?? "",
                              onTap: () =>
                                  context.read<AccountCubit>().goToAdmin(),
                            ),
                            Divider(
                              indent: 30,
                              endIndent: 30,
                              thickness: 0.7,
                            ),
                          ],
                        ),
                      AccountScreenItemWidget(
                        icon: AppAssets.iconLogout,
                        title: AppLocalizations.of(context)?.log_out ?? "",
                        onTap: () => context.read<AccountCubit>().logout(),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
