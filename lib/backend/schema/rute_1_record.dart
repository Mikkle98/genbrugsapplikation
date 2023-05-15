import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rute_1_record.g.dart';

abstract class Rute1Record implements Built<Rute1Record, Rute1RecordBuilder> {
  static Serializer<Rute1Record> get serializer => _$rute1RecordSerializer;

  @BuiltValueField(wireName: 'Navn')
  String? get navn;

  @BuiltValueField(wireName: 'Container')
  String? get container;

  @BuiltValueField(wireName: 'Fraktion')
  String? get fraktion;

  @BuiltValueField(wireName: 'Beskrivelse')
  String? get beskrivelse;

  String? get billede;

  @BuiltValueField(wireName: 'Bidrag')
  String? get bidrag;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(Rute1RecordBuilder builder) => builder
    ..navn = ''
    ..container = ''
    ..fraktion = ''
    ..beskrivelse = ''
    ..billede = ''
    ..bidrag = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rute_1')
          : FirebaseFirestore.instance.collectionGroup('Rute_1');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Rute_1').doc();

  static Stream<Rute1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Rute1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Rute1Record._();
  factory Rute1Record([void Function(Rute1RecordBuilder) updates]) =
      _$Rute1Record;

  static Rute1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRute1RecordData({
  String? navn,
  String? container,
  String? fraktion,
  String? beskrivelse,
  String? billede,
  String? bidrag,
}) {
  final firestoreData = serializers.toFirestore(
    Rute1Record.serializer,
    Rute1Record(
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
