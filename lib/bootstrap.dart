import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder,
    {bool isRelease = false}) async {
  WidgetsFlutterBinding.ensureInitialized();

 
  ///disable screen rotation, and set a fixed rotation to portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );


  FlutterError.onError = (details) async {
    log(details.exceptionAsString(), stackTrace: details.stack);
   
  };

  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(await builder()),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      
    },
  );
}
