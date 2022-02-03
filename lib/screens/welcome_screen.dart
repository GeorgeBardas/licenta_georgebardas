import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null)
      appRouter.replace(HomeScreenRoute());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Welcome"),
                Column(
                  children: [
                    PrimaryButton(
                      text: AppLocalizations.of(context)?.login ?? "",
                      onPressed: () => appRouter.push(const LoginScreenRoute()),
                    ),
                    SizedBox(height: 10),
                    PrimaryButton(
                      text: AppLocalizations.of(context)?.register ?? "",
                      onPressed: () =>
                          appRouter.push(const RegisterScreenRoute()),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
