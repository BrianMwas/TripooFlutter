

import 'package:dartz/dartz.dart';
import 'package:fzregex/fzregex.dart';
import 'package:fzregex/utils/pattern.dart';
import 'package:validators/validators.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {

  if (!isPasswordCompliant(input)) {
    return left(ValueFailure.invalidPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateUrl(
  String input
) {
  final bool isValidURL = Fzregex.hasMatch(input, FzPattern.url);

  if(!isValidURL) {
    return left(ValueFailure.invalidURL(failedValue: input));
  } else {
    return right(
      input
    );
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateEmptyString(
    String input,
    ) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.empty(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String phone) {
  final bool isValidPhone = Fzregex.hasMatch(phone, FzPattern.phone);
  if(isValidPhone) {
    return left(
        ValueFailure.invalidPhoneNumber(failedValue: phone)
    );
  } else {
    return right(phone);
  }
}

bool isPasswordCompliant(String password, [int minLength = 8]) {
  if (password == null || password.isEmpty) {
    return false;
  }

  final bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  final bool hasDigits = password.contains(RegExp(r'[0-9]'));
  final bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  final bool hasMinLength = password.length >= minLength;

  return hasLowercase & hasMinLength & hasUppercase & hasDigits;
}