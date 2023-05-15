import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'genbrugs_affald_record.g.dart';

abstract class GenbrugsAffaldRecord
    implements Built<GenbrugsAffaldRecord, GenbrugsAffaldRecordBuilder> {
  static Serializer<GenbrugsAffaldRecord> get serializer =>
      _$genbrugsAffaldRecordSerializer;

  @BuiltValueField(wireName: 'GenbrugsAffald_Nummer')
  int? get genbrugsAffaldNummer;

  @BuiltValueField(wireName: 'GenbrugsAffald_Navn')
  String? get genbrugsAffaldNavn;

  @BuiltValueField(wireName: 'GenbrugsAffald_Beskrivelse')
  String? get genbrugsAffaldBeskrivelse;

  @BuiltValueField(wireName: 'GenbrugsAffald_Container')
  String? get genbrugsAffaldContainer;

  @BuiltValueField(wireName: 'GenbrugsAffald_Fraktion')
  String? get genbrugsAffaldFraktion;

  @BuiltValueField(wireName: 'GenbrugsAffald_Billede')
  String? get genbrugsAffaldBillede;

  @BuiltValueField(wireName: 'GenbrugsAffald_Bidrag')
  String? get genbrugsAffaldBidrag;

  @BuiltValueField(wireName: 'GenbrugsAffald_Fraktion_Billede')
  String? get genbrugsAffaldFraktionBillede;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GenbrugsAffaldRecordBuilder builder) => builder
    ..genbrugsAffaldNummer = 0
    ..genbrugsAffaldNavn = ''
    ..genbrugsAffaldBeskrivelse = ''
    ..genbrugsAffaldContainer = ''
    ..genbrugsAffaldFraktion = ''
    ..genbrugsAffaldBillede = ''
    ..genbrugsAffaldBidrag = ''
    ..genbrugsAffaldFraktionBillede = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GenbrugsAffald');

  static Stream<GenbrugsAffaldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GenbrugsAffaldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GenbrugsAffaldRecord._();
  factory GenbrugsAffaldRecord(
          [void Function(GenbrugsAffaldRecordBuilder) updates]) =
      _$GenbrugsAffaldRecord;

  static GenbrugsAffaldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGenbrugsAffaldRecordData({
  int? genbrugsAffaldNummer,
  String? genbrugsAffaldNavn,
  String? genbrugsAffaldBeskrivelse,
  String? genbrugsAffaldContainer,
  String? genbrugsAffaldFraktion,
  String? genbrugsAffaldBillede,
  String? genbrugsAffaldBidrag,
  String? genbrugsAffaldFraktionBillede,
}) {
  final firestoreData = serializers.toFirestore(
    GenbrugsAffaldRecord.serializer,
    GenbrugsAffaldRecord(
      (g) => g
        ..genbrugsAffaldNummer = genbrugsAffaldNummer
        ..genbrugsAffaldNavn = genbrugsAffaldNavn
        ..genbrugsAffaldBeskrivelse = genbrugsAffaldBeskrivelse
        ..genbrugsAffaldContainer = genbrugsAffaldContainer
        ..genbrugsAffaldFraktion = genbrugsAffaldFraktion
        ..genbrugsAffaldBillede = genbrugsAffaldBillede
        ..genbrugsAffaldBidrag = genbrugsAffaldBidrag
        ..genbrugsAffaldFraktionBillede = genbrugsAffaldFraktionBillede,
    ),
  );

  return firestoreData;
}
