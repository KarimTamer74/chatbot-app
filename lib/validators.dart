import 'package:chatbot_app/generated/l10n.dart';

class Validator {
  static String? validateEmail(String email, context) {
    final regex = RegExp(r'^[a-zA-Z0-9._%+-]{6,}@gmail\.com$');

    if (email.isEmpty) {
      return S.of(context).emailRequired;
    } else if (!email.split("@")[0].contains(RegExp(r'^.{6,}$'))) {
      return S.of(context).emailMinLength;
    } else if (!regex.hasMatch(email)) {
      if (!email.contains("@gmail.com")) {
        return S.of(context).emailMustEndGmail;
      } else {
        return S.of(context).emailInvalidFormat;
      }
    }
    return null;
  }

  static String? validatePassword(String password, context) {
    if (password.isEmpty) {
      return S.of(context).fieldRequired;
    }
    if (password.length < 8) {
      return S.of(context).passwordAtLeast8Char;
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return S.of(context).passwordAtLeast1Uppercase;
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return S.of(context).passwordAtLeast1Lowercase;
    }
    if (!RegExp(r'\d').hasMatch(password)) {
      return S.of(context).passwordAtLeast1Number;
    }
    if (!RegExp(r'[@$!%*?&]').hasMatch(password)) {
      return S.of(context).passwordAtLeast1SpecialChar;
    }

    return null;
  }

  static String? validateID(String id, context) {
    final regex = RegExp(r'^\d{14}$');

    if (id.isEmpty) {
      return S.of(context).idRequired;
    } else if (!regex.hasMatch(id)) {
      return S.of(context).idInvalid;
    }
    return null;
  }

  static String? validatePhoneNumber(String phoneNumber, context) {
    if (phoneNumber.isEmpty) {
      return S.of(context).phoneRequired;
    }
    if (!RegExp(r'^01[0125]').hasMatch(phoneNumber)) {
      return S.of(context).phoneInvalidStart;
    }
    if (phoneNumber.length != 11) {
      return S.of(context).phoneInvalidLength;
    }
    if (!RegExp(r'^\d{11}$').hasMatch(phoneNumber)) {
      return S.of(context).phoneInvalidFormat;
    }
    return null;
  }

  static String? validateUserName(String userName, context) {
    final regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9_]{2,}$');
    if (userName.isEmpty) {
      return S.of(context).usernameRequired;
    } else if (!RegExp(r'^[a-zA-Z]').hasMatch(userName)) {
      return S.of(context).usernameMustStartWithLetter;
    } else if (userName.length < 3) {
      return S.of(context).usernameMinLength;
    } else if (!regex.hasMatch(userName)) {
      return S.of(context).usernameInvalidFormat;
    } else if (userName.replaceAll(RegExp(r'[^a-zA-Z]'), '').length < 3) {
      return S.of(context).usernameMustContainAtLeast3Letters;
    }
    return null;
  }
}
