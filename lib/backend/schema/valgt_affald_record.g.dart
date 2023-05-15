// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valgt_affald_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ValgtAffaldRecord> _$valgtAffaldRecordSerializer =
    new _$ValgtAffaldRecordSerializer();

class _$ValgtAffaldRecordSerializer
    implements StructuredSerializer<ValgtAffaldRecord> {
  @override
  final Iterable<Type> types = const [ValgtAffaldRecord, _$ValgtAffaldRecord];
  @override
  final String wireName = 'ValgtAffaldRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ValgtAffaldRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.genbrugspladsAffaldNavn;
    if (value != null) {
      result
        ..add('GenbrugspladsAffald_navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsAffaldContainer;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Container')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsAffaldFraktion;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Fraktion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beskrivelseValgtAffald;
    if (value != null) {
      result
        ..add('Beskrivelse_ValgtAffald')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billede;
    if (value != null) {
      result
        ..add('Billede')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bidragfragenbrugspladsaffald;
    if (value != null) {
      result
        ..add('Bidragfragenbrugspladsaffald')
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
  ValgtAffaldRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValgtAffaldRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'GenbrugspladsAffald_navn':
          result.genbrugspladsAffaldNavn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsAffald_Container':
          result.genbrugsAffaldContainer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsAffald_Fraktion':
          result.genbrugsAffaldFraktion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Beskrivelse_ValgtAffald':
          result.beskrivelseValgtAffald = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Billede':
          result.billede = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bidragfragenbrugspladsaffald':
          result.bidragfragenbrugspladsaffald = serializers.deserialize(value,
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

class _$ValgtAffaldRecord extends ValgtAffaldRecord {
  @override
  final String? genbrugspladsAffaldNavn;
  @override
  final String? genbrugsAffaldContainer;
  @override
  final String? genbrugsAffaldFraktion;
  @override
  final String? beskrivelseValgtAffald;
  @override
  final String? billede;
  @override
  final String? bidragfragenbrugspladsaffald;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ValgtAffaldRecord(
          [void Function(ValgtAffaldRecordBuilder)? updates]) =>
      (new ValgtAffaldRecordBuilder()..update(updates))._build();

  _$ValgtAffaldRecord._(
      {this.genbrugspladsAffaldNavn,
      this.genbrugsAffaldContainer,
      this.genbrugsAffaldFraktion,
      this.beskrivelseValgtAffald,
      this.billede,
      this.bidragfragenbrugspladsaffald,
      this.ffRef})
      : super._();

  @override
  ValgtAffaldRecord rebuild(void Function(ValgtAffaldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValgtAffaldRecordBuilder toBuilder() =>
      new ValgtAffaldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValgtAffaldRecord &&
        genbrugspladsAffaldNavn == other.genbrugspladsAffaldNavn &&
        genbrugsAffaldContainer == other.genbrugsAffaldContainer &&
        genbrugsAffaldFraktion == other.genbrugsAffaldFraktion &&
        beskrivelseValgtAffald == other.beskrivelseValgtAffald &&
        billede == other.billede &&
        bidragfragenbrugspladsaffald == other.bidragfragenbrugspladsaffald &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genbrugspladsAffaldNavn.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldContainer.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldFraktion.hashCode);
    _$hash = $jc(_$hash, beskrivelseValgtAffald.hashCode);
    _$hash = $jc(_$hash, billede.hashCode);
    _$hash = $jc(_$hash, bidragfragenbrugspladsaffald.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValgtAffaldRecord')
          ..add('genbrugspladsAffaldNavn', genbrugspladsAffaldNavn)
          ..add('genbrugsAffaldContainer', genbrugsAffaldContainer)
          ..add('genbrugsAffaldFraktion', genbrugsAffaldFraktion)
          ..add('beskrivelseValgtAffald', beskrivelseValgtAffald)
          ..add('billede', billede)
          ..add('bidragfragenbrugspladsaffald', bidragfragenbrugspladsaffald)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ValgtAffaldRecordBuilder
    implements Builder<ValgtAffaldRecord, ValgtAffaldRecordBuilder> {
  _$ValgtAffaldRecord? _$v;

  String? _genbrugspladsAffaldNavn;
  String? get genbrugspladsAffaldNavn => _$this._genbrugspladsAffaldNavn;
  set genbrugspladsAffaldNavn(String? genbrugspladsAffaldNavn) =>
      _$this._genbrugspladsAffaldNavn = genbrugspladsAffaldNavn;

  String? _genbrugsAffaldContainer;
  String? get genbrugsAffaldContainer => _$this._genbrugsAffaldContainer;
  set genbrugsAffaldContainer(String? genbrugsAffaldContainer) =>
      _$this._genbrugsAffaldContainer = genbrugsAffaldContainer;

  String? _genbrugsAffaldFraktion;
  String? get genbrugsAffaldFraktion => _$this._genbrugsAffaldFraktion;
  set genbrugsAffaldFraktion(String? genbrugsAffaldFraktion) =>
      _$this._genbrugsAffaldFraktion = genbrugsAffaldFraktion;

  String? _beskrivelseValgtAffald;
  String? get beskrivelseValgtAffald => _$this._beskrivelseValgtAffald;
  set beskrivelseValgtAffald(String? beskrivelseValgtAffald) =>
      _$this._beskrivelseValgtAffald = beskrivelseValgtAffald;

  String? _billede;
  String? get billede => _$this._billede;
  set billede(String? billede) => _$this._billede = billede;

  String? _bidragfragenbrugspladsaffald;
  String? get bidragfragenbrugspladsaffald =>
      _$this._bidragfragenbrugspladsaffald;
  set bidragfragenbrugspladsaffald(String? bidragfragenbrugspladsaffald) =>
      _$this._bidragfragenbrugspladsaffald = bidragfragenbrugspladsaffald;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ValgtAffaldRecordBuilder() {
    ValgtAffaldRecord._initializeBuilder(this);
  }

  ValgtAffaldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genbrugspladsAffaldNavn = $v.genbrugspladsAffaldNavn;
      _genbrugsAffaldContainer = $v.genbrugsAffaldContainer;
      _genbrugsAffaldFraktion = $v.genbrugsAffaldFraktion;
      _beskrivelseValgtAffald = $v.beskrivelseValgtAffald;
      _billede = $v.billede;
      _bidragfragenbrugspladsaffald = $v.bidragfragenbrugspladsaffald;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValgtAffaldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValgtAffaldRecord;
  }

  @override
  void update(void Function(ValgtAffaldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValgtAffaldRecord build() => _build();

  _$ValgtAffaldRecord _build() {
    final _$result = _$v ??
        new _$ValgtAffaldRecord._(
            genbrugspladsAffaldNavn: genbrugspladsAffaldNavn,
            genbrugsAffaldContainer: genbrugsAffaldContainer,
            genbrugsAffaldFraktion: genbrugsAffaldFraktion,
            beskrivelseValgtAffald: beskrivelseValgtAffald,
            billede: billede,
            bidragfragenbrugspladsaffald: bidragfragenbrugspladsaffald,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
