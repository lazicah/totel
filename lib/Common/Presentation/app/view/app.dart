// ignore_for_file: no_default_cases

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:totel/Common/Presentation/Presentation.dart';
import 'package:totel/Common/Presentation/app/bloc/app_bloc.dart';
import 'package:totel/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc()..add(AppLaunched()),
        ),
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: state.theme.appName,
          theme: state.theme.themeData,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: const RootPage(),
        );
      },
    );
  }
}
