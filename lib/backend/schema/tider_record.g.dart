// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tider_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TiderRecord> _$tiderRecordSerializer = new _$TiderRecordSerializer();

class _$TiderRecordSerializer implements StructuredSerializer<TiderRecord> {
  @override
  final Iterable<Type> types = const [TiderRecord, _$TiderRecord];
  @override
  final String wireName = 'TiderRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TiderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tider;
    if (value != null) {
      result
        ..add('Tider')
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
  TiderRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TiderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Tider':
          result.tider = serializers.deserialize(value,
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

class _$TiderRecord extends TiderRecord {
  @override
  final String? tider;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TiderRecord([void Function(TiderRecordBuilder)? updates]) =>
      (new TiderRecordBuilder()..update(updates))._build();

  _$TiderRecord._({this.tider, this.ffRef}) : super._();

  @override
  TiderRecord rebuild(void Function(TiderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TiderRecordBuilder toBuilder() => new TiderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TiderRecord && tider == other.tider && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tider.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TiderRecord')
          ..add('tider', tider)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TiderRecordBuilder implements Builder<TiderRecord, TiderRecordBuilder> {
  _$TiderRecord? _$v;

  String? _tider;
  String? get tider => _$this._tider;
  set tider(String? tider) => _$this._tider = tider;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TiderRecordBuilder() {
    TiderRecord._initializeBuilder(this);
  }

  TiderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tider = $v.tider;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TiderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TiderRecord;
  }

  @override
  void update(void Function(TiderRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TiderRecord build() => _build();

  _$TiderRecord _build() {
    final _$result = _$v ?? new _$TiderRecord._(tider: tider, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
