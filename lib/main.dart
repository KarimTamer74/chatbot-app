import 'package:chatbot_app/utils/init_screen.dart';
import 'package:chatbot_app/utils/localizations/app_locales_cubit/app_locale_cubit.dart';
import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:chatbot_app/utils/theme/dark_theme_data.dart';
import 'package:chatbot_app/utils/theme/light_theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'firebase_options.dart';
import 'generated/l10n.dart';
import 'utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(
    const ChatbotApp(),
  );
}

class ChatbotApp extends StatelessWidget {
  const ChatbotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AppLocaleCubit>(
              create: (context) => AppLocaleCubit(),
            ),
            BlocProvider<AppThemeCubit>(
              create: (context) => AppThemeCubit(),
            ),
          ],
          child: BlocBuilder<AppLocaleCubit, Locale>(
            builder: (context, locale) {
              return BlocBuilder<AppThemeCubit, ThemeMode>(
                builder: (context, themeMode) {
                  return MaterialApp(
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: S.delegate.supportedLocales,
                    locale: locale,
                    debugShowCheckedModeBanner: false,
                    themeMode: themeMode,
                    theme: getLightTheme(),
                    darkTheme: getDarkTheme(),
                    onGenerateRoute: AppRouter().onGenerateRoute,
                    home: const InitScreen(),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
