import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rute_4_record.g.dart';

abstract class Rute4Record implements Built<Rute4Record, Rute4RecordBuilder> {
  static Serializer<Rute4Record> get serializer => _$rute4RecordSerializer;

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

  static void _initializeBuilder(Rute4RecordBuilder builder) => builder
    ..navn = ''
    ..container = ''
    ..fraktion = ''
    ..beskrivelse = ''
    ..billede = ''
    ..bidrag = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rute_4')
          : FirebaseFirestore.instance.collectionGroup('Rute_4');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Rute_4').doc();

  static Stream<Rute4Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Rute4Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Rute4Record._();
  factory Rute4Record([void Function(Rute4RecordBuilder) updates]) =
      _$Rute4Record;

  static Rute4Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRute4RecordData({
  String? navn,
  String? container,
  String? fraktion,
  String? beskrivelse,
  String? billede,
  String? bidrag,
}) {
  final firestoreData = serializers.toFirestore(
    Rute4Record.serializer,
    Rute4Record(
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
