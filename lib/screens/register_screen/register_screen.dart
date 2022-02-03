import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/register_screen/register_cubit.dart';
import 'package:licenta_georgebardas/utils/assets.dart';
import 'package:licenta_georgebardas/utils/colors.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)?.register ?? "",
                          style: TextStyle(
                            fontSize: 26,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          AppLocalizations.of(context)?.login_subtitle ?? "",
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
                                AppLocalizations.of(context)?.first_name ?? ""),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (name) {
                            if (!InputValidation().validateName(name)) {
                              return AppLocalizations.of(context)?.name_error ??
                                  "";
                            }
                          },
                          onChanged: (text) {
                            context
                                .read<RegisterCubit>()
                                .onFirstNameChanged(text);
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                                AppLocalizations.of(context)?.last_name ?? ""),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (name) {
                            if (!InputValidation().validateName(name)) {
                              return AppLocalizations.of(context)?.name_error ??
                                  "";
                            }
                          },
                          onChanged: (text) {
                            context
                                .read<RegisterCubit>()
                                .onLastNameChanged(text);
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            label:
                                Text(AppLocalizations.of(context)?.email ?? ""),
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) {
                            if (!InputValidation().validateEmail(state.email))
                              return AppLocalizations.of(context)
                                      ?.email_error ??
                                  "";
                            if (state.emailAlreadyUsed)
                              return AppLocalizations.of(context)
                                      ?.email_used_error ??
                                  "";
                          },
                          onChanged: (text) {
                            context.read<RegisterCubit>().onEmailChanged(text);
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                                AppLocalizations.of(context)?.password ?? ""),
                            suffixIcon: IconButton(
                              onPressed: () => context
                                  .read<RegisterCubit>()
                                  .togglePasswordObscure(),
                              icon: AppAssets.iconToggleObscurePassword,
                            ),
                          ),
                          obscureText: state.obscurePassword,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (password) {
                            if (!InputValidation().validatePassword(password))
                              return AppLocalizations.of(context)
                                      ?.password_error_short ??
                                  "";
                          },
                          onChanged: (text) {
                            context
                                .read<RegisterCubit>()
                                .onPasswordChanged(text);
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(AppLocalizations.of(context)
                                    ?.confirm_password ??
                                ""),
                            suffixIcon: IconButton(
                              onPressed: () => context
                                  .read<RegisterCubit>()
                                  .toggleConfirmPasswordObscure(),
                              icon: AppAssets.iconToggleObscurePassword,
                            ),
                          ),
                          obscureText: state.obscureConfirmPassword,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (confirmPassword) {
                            if (!InputValidation().validateConfirmPassword(
                                state.password, confirmPassword))
                              return AppLocalizations.of(context)
                                      ?.confirm_password_error ??
                                  "";
                          },
                          onChanged: (text) {
                            context
                                .read<RegisterCubit>()
                                .onConfirmPasswordChanged(text);
                          },
                        ),
                      ],
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
                      text: AppLocalizations.of(context)?.register ?? "",
                      onPressed: state.isFormValid
                          ? context.read<RegisterCubit>().register
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
                                      ?.already_have_account ??
                                  ""),
                          TextSpan(
                            text: AppLocalizations.of(context)
                                    ?.already_have_account_login ??
                                "",
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () =>
                                  context.read<RegisterCubit>().goToLogin(),
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
          );
        },
      ),
    );
  }
}
