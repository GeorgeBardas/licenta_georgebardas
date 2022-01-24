import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/screens/login_screen/login_cubit.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)?.login ?? ""),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text(
                                      AppLocalizations.of(context)?.email ??
                                          ""),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.email),
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
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password),
                                ),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (_) {
                                  return state.wrongCredentials
                                      ? AppLocalizations.of(context)
                                          ?.wrong_credentials
                                      : null;
                                },
                                obscureText: true,
                                onChanged: (text) {
                                  context
                                      .read<LoginCubit>()
                                      .onPasswordChanged(text);
                                },
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: state.isLoading,
                          child: CircularProgressIndicator(),
                        ),
                        ElevatedButton(
                          onPressed: state.isFormValid
                              ? () => context.read<LoginCubit>().login()
                              : null,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:
                                Text(AppLocalizations.of(context)?.login ?? ""),
                          ),
                        ),
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
