import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_router.dart';
import 'package:chatbot_app/utils/localizations/app_locales_cubit/app_locale_cubit.dart';
import 'package:chatbot_app/utils/theme/app_theming_cubit/app_theme_cubit.dart';
import 'package:chatbot_app/utils/theme/dark_theme_data.dart';
import 'package:chatbot_app/utils/theme/light_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'utils/init_screen.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _getBlocProviders(),
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
  }
}

List<BlocProvider> _getBlocProviders() {
  return [
    BlocProvider<AppLocaleCubit>(
      create: (context) => AppLocaleCubit(),
    ),
    BlocProvider<AppThemeCubit>(
      create: (context) => AppThemeCubit(),
    ),
  ];
}
