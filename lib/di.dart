import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sis_attendance/data/api/login/login_api.dart';
import 'package:sis_attendance/data/repository/maps/maps_repository.dart';
import 'package:sis_attendance/screens/comment/bloc/comment_bloc.dart';
import 'package:sis_attendance/screens/login_page/bloc/login_page_bloc.dart';
import 'package:sis_attendance/screens/map_page/bloc/maps_page_bloc.dart';
import 'package:sis_attendance/screens/post/bloc/post_bloc.dart';
import 'package:sis_attendance/screens/splashscreen_page/bloc/splash_screen_bloc.dart';
import 'package:sis_attendance/screens/todo/bloc/todo_bloc.dart';
import 'package:sis_attendance/screens/user/bloc/user_bloc.dart';

import 'core/network/dio_client.dart';
import 'data/api/comment/comment_api.dart';
import 'data/api/notify/notify_api.dart';
import 'data/api/post/post_api.dart';
import 'data/api/todo/todo_api.dart';
import 'data/api/user/user_api.dart';
import 'data/repository/comment/comment_repository.dart';
import 'data/repository/notification/notification_repository.dart';
import 'data/repository/post/post_repository.dart';
import 'data/repository/todo/todo_repository.dart';
import 'data/repository/user/user_repository.dart';
import 'myApp.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  //Dio
  getIt.registerLazySingleton<Dio>(() => Dio());

  getIt.registerLazySingleton<DioClient>(
          () => DioClient(getIt<Dio>(), getIt<Dio>(),getIt<Dio>()));

  // User api
  getIt.registerLazySingleton<UserApi>(
          () => UserApi(dioClient: getIt<DioClient>()));

  // _Todo api
  getIt.registerLazySingleton<ToDoApi>(
          () => ToDoApi(dioClient: getIt<DioClient>()));

  // Post api
  getIt.registerLazySingleton<PostApi>(
          () => PostApi(dioClient: getIt<DioClient>()));

  // Comment api
  getIt.registerLazySingleton<CommentApi>(
          () => CommentApi(dioClient: getIt<DioClient>()));


  // Notify api
  getIt.registerLazySingleton<NotifyApi>(
          () => NotifyApi(dioClient: getIt<DioClient>()));

  // Maps api
  getIt.registerLazySingleton<MapsApi>(
          () => MapsApi(dioClient: getIt<DioClient>()));

  // User repository
  getIt.registerLazySingleton<UserRepository>(
        () => UserRepository(userApi: getIt<UserApi>()),
  );

// _Todo repository
  getIt.registerLazySingleton<TodoRepository>(
        () => TodoRepository(todoApi: getIt<ToDoApi>()),
  );

  // Post repository
  getIt.registerLazySingleton<PostRepository>(
        () => PostRepository(postApi: getIt<PostApi>()),
  );
  // Comment repository
  getIt.registerLazySingleton<CommentRepository>(
        () => CommentRepository(commentApi: getIt<CommentApi>()),
  );


  // Agent repository
  getIt.registerLazySingleton<NotificationRepository>(
        () => NotificationRepository(notifyApi: getIt<NotifyApi>()),
  );

  // Agent repository
  getIt.registerLazySingleton<MapsRepository>(
        () => MapsRepository(mapsApi: getIt<MapsApi>()),
  );

  //_Todo Bloc
  getIt.registerLazySingleton(
          () => TodoBloc(todoRepository: getIt<TodoRepository>()));

  //Post Bloc
  getIt.registerLazySingleton(
          () => PostBloc(postRepository: getIt<PostRepository>()));

  //Comment Bloc
  getIt.registerLazySingleton(
          () => CommentBloc(commentRepository: getIt<CommentRepository>()));

  //User Bloc
  getIt.registerLazySingleton(
          () => UserBloc(userRepository: getIt<UserRepository>()));

  //Login Bloc
  getIt.registerLazySingleton(
          () => LoginPageBloc(userRepository: getIt<UserRepository>()));

  //Maps Bloc
  getIt.registerLazySingleton(
          () => MapsPageBloc(mapsRepository: getIt<MapsRepository>()));

  // //Home Bloc
  // getIt.registerLazySingleton(() => HomePageBloc(
  //     agentRepository: getIt<CandidateRepository>(),
  //     notificationRepository: getIt<NotificationRepository>()));

  //Splashscreen Bloc
  getIt.registerLazySingleton(() => SplashscreenBloc());

  //Language Cubit
  getIt.registerLazySingleton(() => LanguageCubit());
}
