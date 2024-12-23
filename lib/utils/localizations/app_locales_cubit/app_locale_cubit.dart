import 'dart:developer';

import 'package:chatbot_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppLocaleCubit extends HydratedCubit<Locale> {
  AppLocaleCubit() : super(const Locale(englishKey));

  void changeAppLocale(Locale locale) {
    log('Locale changed to ${locale.languageCode}');
    emit(locale);
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    if (json[localKey] == englishKey) {
      return const Locale(englishKey);
    } else if (json[localKey] == arabicKey) {
      return const Locale(arabicKey);
    } else {
      return const Locale(englishKey);
    }
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    if (state == const Locale(englishKey)) {
      return {localKey: englishKey};
    } else if ((state == const Locale(arabicKey))) {
      return {localKey: arabicKey};
    } else {
      return {localKey: englishKey};
    }
  }
}
