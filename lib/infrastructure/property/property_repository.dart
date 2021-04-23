import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tripoo/domain/entity/failures/class_failure.dart';
import 'package:tripoo/domain/entity/property/property.dart';
import 'package:tripoo/domain/entity/repository/i_property_facade.dart';
import 'package:tripoo/infrastructure/core/firestore_helpers.dart';
import 'package:tripoo/infrastructure/property/property.dto.dart';


@LazySingleton(as: IPropertyFacade)
class PropertyFacade implements IPropertyFacade {
  final FirebaseFirestore _firestore;

  PropertyFacade(this._firestore);

  @override
  Future<Either<PropertyFailure, Unit>> createProperty(Property property) async {
    try {
      final propertyDTO = PropertyDTO.fromDomain(property);

      await _firestore.collection("property").add(propertyDTO.toJson());
      return right(unit);
    } on FirebaseException catch  (e) {
      print("Error message ${e}");
      
      if(e.message.contains("PERMISSION_DENIED")) {
        return left(const PropertyFailure.insufficientPermission());
      } else {
        return left(const PropertyFailure.unExpected());
      }
    }
  }

  @override
  Future<Either<PropertyFailure, Unit>> deleteProperty(Property property) {
    // TODO: implement deleteProperty
    throw UnimplementedError();
  }

  @override
  Future<Either<PropertyFailure, Unit>> updateProperty(Property property) {
    // TODO: implement updateProperty
    throw UnimplementedError();
  }

  @override
  Stream<Either<PropertyFailure, List<Property>>> watchAllLiveProperties() {
    // TODO: implement watchAllLiveProperties
    throw UnimplementedError();
  }

  @override
  Stream<Either<PropertyFailure, Property>> watchSingleProperty(String propertyId) {
    // TODO: implement watchSingleProperty
    throw UnimplementedError();
  }

}