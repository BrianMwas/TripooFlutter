
import 'package:dartz/dartz.dart';
import 'package:tripoo/domain/core/failures.dart';
import 'package:tripoo/domain/core/value_objects.dart';
import 'package:tripoo/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    final res = EmailAddress._(
        validateEmptyString(input)
            .flatMap(validateEmailAddress)
    );
    print("res $res");

    return res;
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
        validateEmptyString(input)
        .flatMap(validatePassword)
    );
  }

  const Password._(this.value);
}

class Username extends ValueObject<String> {

  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String username) {
    assert(username != null);
    return Username._(
      validateMaxStringLength(username, 20)
    );
  }

  const Username._(this.value);
}

class Website extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Website(String url) {
    return Website._(
      validateUrl(
        url
      )
    );
  }

  const Website._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String>  value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validatePhoneNumber(input)
    );
  }

  const PhoneNumber._(this.value);
}