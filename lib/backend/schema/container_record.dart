import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'container_record.g.dart';

abstract class ContainerRecord
    implements Built<ContainerRecord, ContainerRecordBuilder> {
  static Serializer<ContainerRecord> get serializer =>
      _$containerRecordSerializer;

  @BuiltValueField(wireName: 'Container_Nummer')
  int? get containerNummer;

  @BuiltValueField(wireName: 'Container_Navn')
  String? get containerNavn;

  @BuiltValueField(wireName: 'Container_Beskrivelse')
  String? get containerBeskrivelse;

  @BuiltValueField(wireName: 'Container_Billede')
  String? get containerBillede;

  @BuiltValueField(wireName: 'Container_Farve')
  String? get containerFarve;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ContainerRecordBuilder builder) => builder
    ..containerNummer = 0
    ..containerNavn = ''
    ..containerBeskrivelse = ''
    ..containerBillede = ''
    ..containerFarve = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Container');

  static Stream<ContainerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContainerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContainerRecord._();
  factory ContainerRecord([void Function(ContainerRecordBuilder) updates]) =
      _$ContainerRecord;

  static ContainerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContainerRecordData({
  int? containerNummer,
  String? containerNavn,
  String? containerBeskrivelse,
  String? containerBillede,
  String? containerFarve,
}) {
  final firestoreData = serializers.toFirestore(
    ContainerRecord.serializer,
    ContainerRecord(
      (c) => c
        ..containerNummer = containerNummer
        ..containerNavn = containerNavn
        ..containerBeskrivelse = containerBeskrivelse
        ..containerBillede = containerBillede
        ..containerFarve = containerFarve,
    ),
  );

  return firestoreData;
}
