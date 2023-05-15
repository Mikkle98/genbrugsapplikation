import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rute_2_record.g.dart';

abstract class Rute2Record implements Built<Rute2Record, Rute2RecordBuilder> {
  static Serializer<Rute2Record> get serializer => _$rute2RecordSerializer;

  @BuiltValueField(wireName: 'Navn')
  String? get navn;

  @BuiltValueField(wireName: 'Container')
  String? get container;

  @BuiltValueField(wireName: 'Fraktion')
  String? get fraktion;

  @BuiltValueField(wireName: 'Beskrivelse')
  String? get beskrivelse;

  @BuiltValueField(wireName: 'Billede')
  String? get billede;

  @BuiltValueField(wireName: 'Bidrag')
  String? get bidrag;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(Rute2RecordBuilder builder) => builder
    ..navn = ''
    ..container = ''
    ..fraktion = ''
    ..beskrivelse = ''
    ..billede = ''
    ..bidrag = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rute_2')
          : FirebaseFirestore.instance.collectionGroup('Rute_2');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Rute_2').doc();

  static Stream<Rute2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Rute2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Rute2Record._();
  factory Rute2Record([void Function(Rute2RecordBuilder) updates]) =
      _$Rute2Record;

  static Rute2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRute2RecordData({
  String? navn,
  String? container,
  String? fraktion,
  String? beskrivelse,
  String? billede,
  String? bidrag,
}) {
  final firestoreData = serializers.toFirestore(
    Rute2Record.serializer,
    Rute2Record(
      (r) => r
        ..navn = navn
        ..container = container
        ..fraktion = fraktion
        ..beskrivelse = beskrivelse
        ..billede = billede
        ..bidrag = bidrag,
    ),
  );

  return firestoreData;
}
