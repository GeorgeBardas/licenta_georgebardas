import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/login_screen/login_cubit.dart';
import 'package:licenta_georgebardas/utils/assets.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)?.login ?? "",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                AppLocalizations.of(context)?.login_subtitle ??
                                    "",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 40),
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text(
                                      AppLocalizations.of(context)?.email ??
                                          ""),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (email) {
                                  if (!InputValidation()
                                      .validateEmail(state.email))
                                    return AppLocalizations.of(context)
                                            ?.email_error ??
                                        "";
                                },
                                onChanged: (text) {
                                  context
                                      .read<LoginCubit>()
                                      .onEmailChanged(text);
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text(
                                      AppLocalizations.of(context)?.password ??
                                          ""),
                                  suffixIcon: IconButton(
                                    onPressed: () => context
                                        .read<LoginCubit>()
                                        .toggleObscurePassword(),
                                    icon: AppAssets.iconToggleObscurePassword,
                                  ),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (_) {
                                  return state.wrongCredentials
                                      ? AppLocalizations.of(context)
                                          ?.wrong_credentials
                                      : null;
                                },
                                obscureText: state.obscurePassword,
                                onChanged: (text) {
                                  context
                                      .read<LoginCubit>()
                                      .onPasswordChanged(text);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 60),
                        Visibility(
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          visible: state.isLoading,
                          child: CircularProgressIndicator(),
                        ),
                        SizedBox(height: 30),
                        PrimaryButton(
                          text: AppLocalizations.of(context)?.login ?? "",
                          onPressed: state.isFormValid
                              ? () => context.read<LoginCubit>().login()
                              : null,
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                  text: AppLocalizations.of(context)
                                          ?.dont_have_account ??
                                      ""),
                              TextSpan(
                                text: AppLocalizations.of(context)
                                        ?.dont_have_account_register ??
                                    "",
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () =>
                                      context.read<LoginCubit>().goToRegister(),
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
