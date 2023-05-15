import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'genbrugsplads_record.g.dart';

abstract class GenbrugspladsRecord
    implements Built<GenbrugspladsRecord, GenbrugspladsRecordBuilder> {
  static Serializer<GenbrugspladsRecord> get serializer =>
      _$genbrugspladsRecordSerializer;

  @BuiltValueField(wireName: 'Genbrugsplads_Navn')
  String? get genbrugspladsNavn;

  @BuiltValueField(wireName: 'Genbrugsplads_Tal')
  int? get genbrugspladsTal;

  @BuiltValueField(wireName: 'Genbrugsplads_Lokation')
  String? get genbrugspladsLokation;

  @BuiltValueField(wireName: 'Genbrugsplads_Kontakt')
  String? get genbrugspladsKontakt;

  @BuiltValueField(wireName: 'GenbrugsPlads_Indenbesoeg')
  String? get genbrugsPladsIndenbesoeg;

  @BuiltValueField(wireName: 'Genbrugsplads_Aabningstider')
  String? get genbrugspladsAabningstider;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GenbrugspladsRecordBuilder builder) => builder
    ..genbrugspladsNavn = ''
    ..genbrugspladsTal = 0
    ..genbrugspladsLokation = ''
    ..genbrugspladsKontakt = ''
    ..genbrugsPladsIndenbesoeg = ''
    ..genbrugspladsAabningstider = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Genbrugsplads');

  static Stream<GenbrugspladsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GenbrugspladsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GenbrugspladsRecord._();
  factory GenbrugspladsRecord(
          [void Function(GenbrugspladsRecordBuilder) updates]) =
      _$GenbrugspladsRecord;

  static GenbrugspladsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGenbrugspladsRecordData({
  String? genbrugspladsNavn,
  int? genbrugspladsTal,
  String? genbrugspladsLokation,
  String? genbrugspladsKontakt,
  String? genbrugsPladsIndenbesoeg,
  String? genbrugspladsAabningstider,
}) {
  final firestoreData = serializers.toFirestore(
    GenbrugspladsRecord.serializer,
    GenbrugspladsRecord(
      (g) => g
        ..genbrugspladsNavn = genbrugspladsNavn
        ..genbrugspladsTal = genbrugspladsTal
        ..genbrugspladsLokation = genbrugspladsLokation
        ..genbrugspladsKontakt = genbrugspladsKontakt
        ..genbrugsPladsIndenbesoeg = genbrugsPladsIndenbesoeg
        ..genbrugspladsAabningstider = genbrugspladsAabningstider,
    ),
  );

  return firestoreData;
}
