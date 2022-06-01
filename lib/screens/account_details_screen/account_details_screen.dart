import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:licenta_georgebardas/screens/account_details_screen/account_details_cubit.dart';
import 'package:licenta_georgebardas/utils/colors.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountDetailsCubit()..getUser(),
      child: BlocBuilder<AccountDetailsCubit, AccountDetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLocalizations.of(context)?.account_details ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              foregroundColor: Colors.black,
            ),
            body: state.isLoading
                ? Center(child: CircularProgressIndicator())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Center(
                        child: GestureDetector(
                          onTap: () async {
                            final result = await ImagePicker().pickImage(
                              source: ImageSource.gallery,
                            );
                            if (result != null)
                              context
                                  .read<AccountDetailsCubit>()
                                  .uploadAvatar(result);
                          },
                          child: state.userAvatar == null
                              ? Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(Icons.accessibility),
                                    // child: Image.network(),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    state.userAvatar!,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "${state.user?.firstName} ${state.user?.lastName}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        AppLocalizations.of(context)?.admin ?? "",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            if (state.user?.email != null)
                              TextFormField(
                                enabled: false,
                                initialValue: state.user!.email,
                                decoration: InputDecoration(
                                  label: Text(
                                    AppLocalizations.of(context)?.email ?? "",
                                  ),
                                ),
                              ),
                            SizedBox(height: 15),
                            if (state.user?.birthday != null)
                              TextFormField(
                                enabled: false,
                                initialValue: DateFormat(
                                        DateFormat.YEAR_ABBR_MONTH_DAY)
                                    .format(
                                        DateTime.parse(state.user!.birthday)),
                                decoration: InputDecoration(
                                  label: Text(
                                    AppLocalizations.of(context)?.birthday ??
                                        "",
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
          );
        },
      ),
    );
  }
}
