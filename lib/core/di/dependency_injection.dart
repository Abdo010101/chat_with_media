import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:media_chat/core/netwoking/api_service.dart';
import 'package:media_chat/core/netwoking/dio_factory.dart';

import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;


Future<void> setUp() async {
  Dio dio = DioFactory.getDio();

  SharedPreferences pref = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(pref);

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // // login di
  // getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  // getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

}
