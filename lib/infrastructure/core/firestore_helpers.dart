import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tripoo/domain/auth/i_auth_facade.dart';
import 'package:tripoo/domain/core/errors.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:tripoo/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user.id);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get propertyCollection => collection('property');
  CollectionReference get userCollection => collection('user');
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

class GeoPointConverter
    implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> json) {
    return json["geopoint"] as GeoPoint;
  }

  @override
  Map<String, dynamic> toJson(GeoPoint object) {
    final Geoflutterfire geo = Geoflutterfire();
    final GeoFirePoint point =
        geo.point(latitude: object.latitude, longitude: object.longitude);

    return point.data as Map<String, dynamic>;
  }
}

extension DoubleParse on String {
  double toDouble() {
    return double.parse(this);
  }
}
