
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_failure.freezed.dart';

@freezed
abstract class PropertyFailure with _$PropertyFailure {
  const factory PropertyFailure.serverError() = _ServerError;
  const factory PropertyFailure.unExpected() = _UnExpected;
  const factory PropertyFailure.insufficientPermission() = _InsufficientPermission;
  const factory PropertyFailure.unableToUpdate() = _UnableToUpdate;
}