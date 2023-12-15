import 'package:intl/intl.dart';

class MyValidators {
  static String? displayNameValidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'AppString.emptyName';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'AppString.nameCharacters';
    }
    return null;
  }

  static String? phoneValidator(String? phone) {
    if (phone == null || phone.isEmpty) {
      return 'AppString.emptyNumber';
    }
    if (phone.length != 11) {
      return 'AppString.egyptianNumber';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return 'AppString.emailHint';
    }
    if (!RegExp(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
        .hasMatch(value)) {
      return 'AppString.emailValid';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'AppString.passwordHint';
    }
    if (value.length < 8) {
      return 'AppString.passwordCharacters';
    }
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    var passNonNullValue = value;
    if (!regex.hasMatch(passNonNullValue)) {
      return 'AppString.passwordError1';
    }
    return null;
  }

  static String? repeatPasswordValidator({String? value, String? password}) {
    if (value != password) {
      return 'AppString.passwordNoMatch';
    }
    return null;
  }

  static String? birthDateValidator(String? value) {
    final DateTime now2 = DateTime.now().subtract(const Duration(days: 6570));
    final DateTime now3 = DateTime.now().subtract(const Duration(days: 25550));
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy');
    final String formatted = formatter.format(now);
    String? str1 = value;
    List<String> str2 = str1!.split('/');
    String day = str2.isNotEmpty ? str2[0] : '';
    String month = str2.length > 1 ? str2[1] : '';
    String year = str2.length > 2 ? str2[2] : '';
    if (value!.isEmpty) {
      return 'AppString.birthDateEmpty';
    } else if (int.parse(day) > 31) {
      return 'AppString.dayInvalid';
    } else if (int.parse(month) > 12) {
      return 'AppString.monthInvalid';
    } else if ((int.parse(year) > int.parse(formatted))) {
      return 'AppString.yearInvalid';
    } else if ((int.parse(year) < now3.year)) {
      return 'AppString.yearInvalid';
    } else if (int.parse(year) > now2.year) {
      return 'AppString.errorYearsOld';
    }
    return null;
  }
}
