import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/register_screen/register_cubit.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)?.register ?? ""),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                                AppLocalizations.of(context)?.first_name ?? ""),
                            border: OutlineInputBorder(),
                            prefixIcon:
                                Icon(Icons.supervised_user_circle_outlined),
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
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.museum_rounded),
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
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
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
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                          obscureText: true,
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
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password),
                          ),
                          obscureText: true,
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
                    Visibility(
                      visible: state.isLoading,
                      child: CircularProgressIndicator(),
                    ),
                    ElevatedButton(
                      onPressed: state.isFormValid
                          ? context.read<RegisterCubit>().register
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            Text(AppLocalizations.of(context)?.register ?? ""),
                      ),
                    ),
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
