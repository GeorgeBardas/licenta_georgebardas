import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_category_screen/admin_add_category_cubit.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class AdminAddCategoryScreen extends StatelessWidget {
  const AdminAddCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AdminAddCategoryCubit(),
      child: BlocBuilder<AdminAddCategoryCubit, AdminAddCategoryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLocalizations.of(context)?.add_category ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              foregroundColor: Colors.black,
            ),
            body: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(AppLocalizations.of(context)
                                ?.add_category_field_title ??
                            ""),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (category) {
                        if (!InputValidation()
                            .validateCategory(category ?? "")) {
                          return AppLocalizations.of(context)
                                  ?.add_category_length_error ??
                              "";
                        }
                      },
                      onChanged: (text) {
                        context
                            .read<AdminAddCategoryCubit>()
                            .onTitleChange(text);
                      },
                    ),
                  ),
                  Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: state.isLoading,
                    child: CircularProgressIndicator(),
                  ),
                  SizedBox(height: 30),
                  PrimaryButton(
                    text: AppLocalizations.of(context)?.add ?? "",
                    onPressed: state.isFormFieldValid
                        ? () =>
                            context.read<AdminAddCategoryCubit>().addCategory()
                        : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
