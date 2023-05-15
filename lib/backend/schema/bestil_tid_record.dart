import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bestil_tid_record.g.dart';

abstract class BestilTidRecord
    implements Built<BestilTidRecord, BestilTidRecordBuilder> {
  static Serializer<BestilTidRecord> get serializer =>
      _$bestilTidRecordSerializer;

  @BuiltValueField(wireName: 'Dato')
  DateTime? get dato;

  DocumentReference? get uid;

  @BuiltValueField(wireName: 'Tid')
  String? get tid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BestilTidRecordBuilder builder) =>
      builder..tid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bestil_Tid');

  static Stream<BestilTidRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BestilTidRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BestilTidRecord._();
  factory BestilTidRecord([void Function(BestilTidRecordBuilder) updates]) =
      _$BestilTidRecord;

  static BestilTidRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBestilTidRecordData({
  DateTime? dato,
  DocumentReference? uid,
  String? tid,
}) {
  final firestoreData = serializers.toFirestore(
    BestilTidRecord.serializer,
    BestilTidRecord(
      (b) => b
        ..dato = dato
        ..uid = uid
        ..tid = tid,
    ),
  );

  return firestoreData;
}
