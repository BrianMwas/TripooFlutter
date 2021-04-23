

import 'package:dartz/dartz.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';

abstract class IPropertyFacade {
  // Ensure that any property that is not set live by the owner is not shown.
  Stream<Either<PropertyFailure, List<Property>>> watchAllLiveProperties();
  Stream<Either<PropertyFailure, Property>> watchSingleProperty(String propertyId);
  Future<Either<PropertyFailure, Unit>> createProperty(Property property);
  Future<Either<PropertyFailure, Unit>> updateProperty(Property property);
  Future<Either<PropertyFailure, Unit>> deleteProperty(Property property);
}