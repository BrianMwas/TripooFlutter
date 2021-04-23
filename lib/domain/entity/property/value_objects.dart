


import 'package:dartz/dartz.dart';
import 'package:tripoo/domain/core/failures.dart';
import 'package:tripoo/domain/core/value_objects.dart';
import 'package:tripoo/domain/core/value_validators.dart';

class PropertyName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;
  static const minLength = 2;

  factory PropertyName(String input) {
    assert(input != null);
    return PropertyName._(
      validateMaxStringLength(input, maxLength)
      .flatMap((a) => validateMinStringLength(a, minLength))
          .flatMap(validateEmptyString)
    );
  }

  const PropertyName._(this.value);
}

class PropertyDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String>  value;

  static const maxLength = 250;

  factory PropertyDescription(String input) {
    assert(input != null);
    return PropertyDescription._(
      validateEmptyString(input)
          .flatMap((a) => validateMaxStringLength(a, maxLength))
    );
  }

  const PropertyDescription._(this.value);
}

