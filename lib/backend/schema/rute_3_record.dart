import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rute_3_record.g.dart';

abstract class Rute3Record implements Built<Rute3Record, Rute3RecordBuilder> {
  static Serializer<Rute3Record> get serializer => _$rute3RecordSerializer;

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

  static void _initializeBuilder(Rute3RecordBuilder builder) => builder
    ..navn = ''
    ..container = ''
    ..fraktion = ''
    ..beskrivelse = ''
    ..billede = ''
    ..bidrag = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rute_3')
          : FirebaseFirestore.instance.collectionGroup('Rute_3');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Rute_3').doc();

  static Stream<Rute3Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Rute3Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Rute3Record._();
  factory Rute3Record([void Function(Rute3RecordBuilder) updates]) =
      _$Rute3Record;

  static Rute3Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRute3RecordData({
  String? navn,
  String? container,
  String? fraktion,
  String? beskrivelse,
  String? billede,
  String? bidrag,
}) {
  final firestoreData = serializers.toFirestore(
    Rute3Record.serializer,
    Rute3Record(
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
