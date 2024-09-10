
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sis_attendance/screens/comment/bloc/comment_bloc.dart';
import 'package:sis_attendance/screens/login_page/bloc/login_page_bloc.dart';
import 'package:sis_attendance/screens/login_page/screen/login_page.dart';
import 'package:sis_attendance/screens/post/bloc/post_bloc.dart';
import 'package:sis_attendance/screens/splashscreen_page/bloc/splash_screen_bloc.dart';
import 'package:sis_attendance/screens/todo/bloc/todo_bloc.dart';
import 'package:sis_attendance/screens/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/router/routes.dart';
import 'di.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoBloc>(create: (context) => getIt<TodoBloc>()),
        BlocProvider<PostBloc>(create: (context) => getIt<PostBloc>()),
        BlocProvider<CommentBloc>(create: (context) => getIt<CommentBloc>()),
        BlocProvider<UserBloc>(create: (context) => getIt<UserBloc>()),
        BlocProvider<SplashscreenBloc>(create: (context) => getIt<SplashscreenBloc>()),
        BlocProvider<LanguageCubit>(create: (context) => getIt<LanguageCubit>()),
        BlocProvider<LoginPageBloc>(create: (context) => getIt<LoginPageBloc>()),
             ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, lang) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: lang,
            theme: AppTheme.lightAppTheme,
            navigatorKey: AppRouter.navigatorKey,
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: Routes.dashboardScreen,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
              Locale('es', ''), // Spanish, no country code
              Locale('id', ''), // indo, no country code
              Locale('tr', ''),
              Locale('it', ''),
            ],
          );
        },
      ),
    );
  }
}
class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('id'));

  void changeStartLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? langCode = prefs.getString('lang');
    print(langCode);
    emit(Locale(langCode??'', ''));
    }

  void changeLang(context, String data) async {
    emit(Locale(data, ''));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('lang', data);
  }
}

