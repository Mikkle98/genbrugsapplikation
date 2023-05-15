import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tider_record.g.dart';

abstract class TiderRecord implements Built<TiderRecord, TiderRecordBuilder> {
  static Serializer<TiderRecord> get serializer => _$tiderRecordSerializer;

  @BuiltValueField(wireName: 'Tider')
  String? get tider;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TiderRecordBuilder builder) =>
      builder..tider = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tider');

  static Stream<TiderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TiderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TiderRecord._();
  factory TiderRecord([void Function(TiderRecordBuilder) updates]) =
      _$TiderRecord;

  static TiderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTiderRecordData({
  String? tider,
}) {
  final firestoreData = serializers.toFirestore(
    TiderRecord.serializer,
    TiderRecord(
      (t) => t..tider = tider,
    ),
  );

  return firestoreData;
}
