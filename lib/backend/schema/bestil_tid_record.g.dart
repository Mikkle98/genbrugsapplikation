// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestil_tid_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BestilTidRecord> _$bestilTidRecordSerializer =
    new _$BestilTidRecordSerializer();

class _$BestilTidRecordSerializer
    implements StructuredSerializer<BestilTidRecord> {
  @override
  final Iterable<Type> types = const [BestilTidRecord, _$BestilTidRecord];
  @override
  final String wireName = 'BestilTidRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BestilTidRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dato;
    if (value != null) {
      result
        ..add('Dato')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.tid;
    if (value != null) {
      result
        ..add('Tid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BestilTidRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestilTidRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Dato':
          result.dato = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Tid':
          result.tid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BestilTidRecord extends BestilTidRecord {
  @override
  final DateTime? dato;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final String? tid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BestilTidRecord([void Function(BestilTidRecordBuilder)? updates]) =>
      (new BestilTidRecordBuilder()..update(updates))._build();

  _$BestilTidRecord._({this.dato, this.uid, this.tid, this.ffRef}) : super._();

  @override
  BestilTidRecord rebuild(void Function(BestilTidRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestilTidRecordBuilder toBuilder() =>
      new BestilTidRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestilTidRecord &&
        dato == other.dato &&
        uid == other.uid &&
        tid == other.tid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dato.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, tid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BestilTidRecord')
          ..add('dato', dato)
          ..add('uid', uid)
          ..add('tid', tid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BestilTidRecordBuilder
    implements Builder<BestilTidRecord, BestilTidRecordBuilder> {
  _$BestilTidRecord? _$v;

  DateTime? _dato;
  DateTime? get dato => _$this._dato;
  set dato(DateTime? dato) => _$this._dato = dato;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BestilTidRecordBuilder() {
    BestilTidRecord._initializeBuilder(this);
  }

  BestilTidRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dato = $v.dato;
      _uid = $v.uid;
      _tid = $v.tid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BestilTidRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BestilTidRecord;
  }

  @override
  void update(void Function(BestilTidRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BestilTidRecord build() => _build();

  _$BestilTidRecord _build() {
    final _$result = _$v ??
        new _$BestilTidRecord._(dato: dato, uid: uid, tid: tid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
