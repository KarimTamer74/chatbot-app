import 'package:chatbot_app/utils/init_screen.dart';
import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:chatbot_app/utils/theme/dark_theme_data.dart';
import 'package:chatbot_app/utils/theme/light_theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'firebase_options.dart';
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
      builder: (_, child) {
        return BlocProvider(
          create: (context) => AppThemeCubit(),
          child: BlocBuilder<AppThemeCubit, ThemeMode>(
            builder: (context, themMode) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode: themMode,
                theme: getLightTheme(),
                darkTheme: getDarkTheme(),
                onGenerateRoute: AppRouter().onGenerateRoute,
                home: const InitScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
