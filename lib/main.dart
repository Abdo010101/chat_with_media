import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:media_chat/bloc_observer.dart';
import 'package:media_chat/core/di/dependency_injection.dart';
import 'package:media_chat/core/routing/app_router.dart';
import 'package:media_chat/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setUp();
  Bloc.observer = MyBlocObserver();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    child: MainApp(
      appRouter: AppRouter(),
    ),
  ));
}
