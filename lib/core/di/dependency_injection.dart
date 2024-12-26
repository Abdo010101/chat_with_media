import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:media_chat/core/netwoking/dio_factory.dart';
import 'package:media_chat/feature/search/data/api/search_api.dart';
import 'package:media_chat/feature/search/data/repo/search_repo.dart';
import 'package:media_chat/feature/search/logic/search_cubit.dart';
import 'package:media_chat/feature/video/data/repo/video_repo.dart';
import 'package:media_chat/feature/video/logic/vido_cubit.dart';

import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  Dio dio = DioFactory.getDio();

  SharedPreferences pref = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(pref);

  // // login di
  
  getIt.registerLazySingleton<SearchApi>(() => SearchApi(dio));
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerFactory<SearchCubit>(() => SearchCubit(getIt()));

  // // login di
  getIt.registerLazySingleton<VideoRepo>(() => VideoRepo());
  getIt.registerFactory<VidoCubit>(() => VidoCubit(getIt()));
}
