import 'dart:developer';

import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppLocaleCubit extends HydratedCubit<Locale> {
  AppLocaleCubit() : super(const Locale(AppConstants.englishKey));

  void changeAppLocale(Locale locale) {
    log('Locale changed to ${locale.languageCode}');
    emit(locale);
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    if (json[AppConstants.localKey] == AppConstants.englishKey) {
      return const Locale(AppConstants.englishKey);
    } else if (json[AppConstants.localKey] == AppConstants.arabicKey) {
      return const Locale(AppConstants.arabicKey);
    } else {
      return const Locale(AppConstants.englishKey);
    }
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    if (state == const Locale(AppConstants.englishKey)) {
      return {AppConstants.localKey: AppConstants.englishKey};
    } else if ((state == const Locale(AppConstants.arabicKey))) {
      return {AppConstants.localKey: AppConstants.arabicKey};
    } else {
      return {AppConstants.localKey: AppConstants.englishKey};
    }
  }
}
