import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fraktioner_record.g.dart';

abstract class FraktionerRecord
    implements Built<FraktionerRecord, FraktionerRecordBuilder> {
  static Serializer<FraktionerRecord> get serializer =>
      _$fraktionerRecordSerializer;

  @BuiltValueField(wireName: 'Fraktions_Navn')
  String? get fraktionsNavn;

  @BuiltValueField(wireName: 'Fraktion_Farve')
  String? get fraktionFarve;

  @BuiltValueField(wireName: 'Fraktion_Billede')
  String? get fraktionBillede;

  @BuiltValueField(wireName: 'Fraktion_Beskrivelse')
  String? get fraktionBeskrivelse;

  @BuiltValueField(wireName: 'Fraktion_Nummer')
  int? get fraktionNummer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FraktionerRecordBuilder builder) => builder
    ..fraktionsNavn = ''
    ..fraktionFarve = ''
    ..fraktionBillede = ''
    ..fraktionBeskrivelse = ''
    ..fraktionNummer = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fraktioner');

  static Stream<FraktionerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FraktionerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FraktionerRecord._();
  factory FraktionerRecord([void Function(FraktionerRecordBuilder) updates]) =
      _$FraktionerRecord;

  static FraktionerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFraktionerRecordData({
  String? fraktionsNavn,
  String? fraktionFarve,
  String? fraktionBillede,
  String? fraktionBeskrivelse,
  int? fraktionNummer,
}) {
  final firestoreData = serializers.toFirestore(
    FraktionerRecord.serializer,
    FraktionerRecord(
      (f) => f
        ..fraktionsNavn = fraktionsNavn
        ..fraktionFarve = fraktionFarve
        ..fraktionBillede = fraktionBillede
        ..fraktionBeskrivelse = fraktionBeskrivelse
        ..fraktionNummer = fraktionNummer,
    ),
  );

  return firestoreData;
}
