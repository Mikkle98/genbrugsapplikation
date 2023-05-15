import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'brugere_record.g.dart';

abstract class BrugereRecord
    implements Built<BrugereRecord, BrugereRecordBuilder> {
  static Serializer<BrugereRecord> get serializer => _$brugereRecordSerializer;

  String? get email;

  String? get password;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get genbrugsplads;

  @BuiltValueField(wireName: 'bestilt_tid')
  String? get bestiltTid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'bestilt_tid1')
  int? get bestiltTid1;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BrugereRecordBuilder builder) => builder
    ..email = ''
    ..password = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..genbrugsplads = ''
    ..bestiltTid = ''
    ..phoneNumber = ''
    ..bestiltTid1 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Brugere');

  static Stream<BrugereRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BrugereRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BrugereRecord._();
  factory BrugereRecord([void Function(BrugereRecordBuilder) updates]) =
      _$BrugereRecord;

  static BrugereRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBrugereRecordData({
  String? email,
  String? password,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? genbrugsplads,
  String? bestiltTid,
  String? phoneNumber,
  int? bestiltTid1,
}) {
  final firestoreData = serializers.toFirestore(
    BrugereRecord.serializer,
    BrugereRecord(
      (b) => b
        ..email = email
        ..password = password
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..genbrugsplads = genbrugsplads
        ..bestiltTid = bestiltTid
        ..phoneNumber = phoneNumber
        ..bestiltTid1 = bestiltTid1,
    ),
  );

  return firestoreData;
}
