import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'valgt_affald_record.g.dart';

abstract class ValgtAffaldRecord
    implements Built<ValgtAffaldRecord, ValgtAffaldRecordBuilder> {
  static Serializer<ValgtAffaldRecord> get serializer =>
      _$valgtAffaldRecordSerializer;

  @BuiltValueField(wireName: 'GenbrugspladsAffald_navn')
  String? get genbrugspladsAffaldNavn;

  @BuiltValueField(wireName: 'GenbrugsAffald_Container')
  String? get genbrugsAffaldContainer;

  @BuiltValueField(wireName: 'GenbrugsAffald_Fraktion')
  String? get genbrugsAffaldFraktion;

  @BuiltValueField(wireName: 'Beskrivelse_ValgtAffald')
  String? get beskrivelseValgtAffald;

  @BuiltValueField(wireName: 'Billede')
  String? get billede;

  @BuiltValueField(wireName: 'Bidragfragenbrugspladsaffald')
  String? get bidragfragenbrugspladsaffald;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ValgtAffaldRecordBuilder builder) => builder
    ..genbrugspladsAffaldNavn = ''
    ..genbrugsAffaldContainer = ''
    ..genbrugsAffaldFraktion = ''
    ..beskrivelseValgtAffald = ''
    ..billede = ''
    ..bidragfragenbrugspladsaffald = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Valgt_Affald');

  static Stream<ValgtAffaldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ValgtAffaldRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ValgtAffaldRecord._();
  factory ValgtAffaldRecord([void Function(ValgtAffaldRecordBuilder) updates]) =
      _$ValgtAffaldRecord;

  static ValgtAffaldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createValgtAffaldRecordData({
  String? genbrugspladsAffaldNavn,
  String? genbrugsAffaldContainer,
  String? genbrugsAffaldFraktion,
  String? beskrivelseValgtAffald,
  String? billede,
  String? bidragfragenbrugspladsaffald,
}) {
  final firestoreData = serializers.toFirestore(
    ValgtAffaldRecord.serializer,
    ValgtAffaldRecord(
      (v) => v
        ..genbrugspladsAffaldNavn = genbrugspladsAffaldNavn
        ..genbrugsAffaldContainer = genbrugsAffaldContainer
        ..genbrugsAffaldFraktion = genbrugsAffaldFraktion
        ..beskrivelseValgtAffald = beskrivelseValgtAffald
        ..billede = billede
        ..bidragfragenbrugspladsaffald = bidragfragenbrugspladsaffald,
    ),
  );

  return firestoreData;
}
