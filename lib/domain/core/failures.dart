
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmailAddress({
    @required String failedValue
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidUsername({
    @required String failedValue
  }) = InvalidUsername<T>;

  const factory ValueFailure.invalidPhoneNumber({
    @required String failedValue
}) = _InvalidPhoneNumber<T>;

  const factory ValueFailure.invalidURL({
    @required String failedValue
}) = _InvalidURL<T>;

  const factory ValueFailure.invalidPassword({
    @required String failedValue
  }) = InvalidPassword<T>;

  const factory ValueFailure.empty({
    @required T failedValue
  }) = Empty<T>;

  const factory ValueFailure.exceedingLength({
    @required String failedValue,
    @required int max
}) = ExceedingLength<T>;

  const factory ValueFailure.wrongFormat({
  @required T failedValue,
}) = WrongFormat<T>;


  const factory ValueFailure.lowValue({
    @required double failedValue,
    @required double minValue,
    @required double maxValue
}) = LowValue<T>;
}