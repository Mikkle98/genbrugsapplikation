// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genbrugsplads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenbrugspladsRecord> _$genbrugspladsRecordSerializer =
    new _$GenbrugspladsRecordSerializer();

class _$GenbrugspladsRecordSerializer
    implements StructuredSerializer<GenbrugspladsRecord> {
  @override
  final Iterable<Type> types = const [
    GenbrugspladsRecord,
    _$GenbrugspladsRecord
  ];
  @override
  final String wireName = 'GenbrugspladsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GenbrugspladsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.genbrugspladsNavn;
    if (value != null) {
      result
        ..add('Genbrugsplads_Navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugspladsTal;
    if (value != null) {
      result
        ..add('Genbrugsplads_Tal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genbrugspladsLokation;
    if (value != null) {
      result
        ..add('Genbrugsplads_Lokation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugspladsKontakt;
    if (value != null) {
      result
        ..add('Genbrugsplads_Kontakt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsPladsIndenbesoeg;
    if (value != null) {
      result
        ..add('GenbrugsPlads_Indenbesoeg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugspladsAabningstider;
    if (value != null) {
      result
        ..add('Genbrugsplads_Aabningstider')
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
  GenbrugspladsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenbrugspladsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Genbrugsplads_Navn':
          result.genbrugspladsNavn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Genbrugsplads_Tal':
          result.genbrugspladsTal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Genbrugsplads_Lokation':
          result.genbrugspladsLokation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Genbrugsplads_Kontakt':
          result.genbrugspladsKontakt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsPlads_Indenbesoeg':
          result.genbrugsPladsIndenbesoeg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Genbrugsplads_Aabningstider':
          result.genbrugspladsAabningstider = serializers.deserialize(value,
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

class _$GenbrugspladsRecord extends GenbrugspladsRecord {
  @override
  final String? genbrugspladsNavn;
  @override
  final int? genbrugspladsTal;
  @override
  final String? genbrugspladsLokation;
  @override
  final String? genbrugspladsKontakt;
  @override
  final String? genbrugsPladsIndenbesoeg;
  @override
  final String? genbrugspladsAabningstider;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GenbrugspladsRecord(
          [void Function(GenbrugspladsRecordBuilder)? updates]) =>
      (new GenbrugspladsRecordBuilder()..update(updates))._build();

  _$GenbrugspladsRecord._(
      {this.genbrugspladsNavn,
      this.genbrugspladsTal,
      this.genbrugspladsLokation,
      this.genbrugspladsKontakt,
      this.genbrugsPladsIndenbesoeg,
      this.genbrugspladsAabningstider,
      this.ffRef})
      : super._();

  @override
  GenbrugspladsRecord rebuild(
          void Function(GenbrugspladsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenbrugspladsRecordBuilder toBuilder() =>
      new GenbrugspladsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenbrugspladsRecord &&
        genbrugspladsNavn == other.genbrugspladsNavn &&
        genbrugspladsTal == other.genbrugspladsTal &&
        genbrugspladsLokation == other.genbrugspladsLokation &&
        genbrugspladsKontakt == other.genbrugspladsKontakt &&
        genbrugsPladsIndenbesoeg == other.genbrugsPladsIndenbesoeg &&
        genbrugspladsAabningstider == other.genbrugspladsAabningstider &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genbrugspladsNavn.hashCode);
    _$hash = $jc(_$hash, genbrugspladsTal.hashCode);
    _$hash = $jc(_$hash, genbrugspladsLokation.hashCode);
    _$hash = $jc(_$hash, genbrugspladsKontakt.hashCode);
    _$hash = $jc(_$hash, genbrugsPladsIndenbesoeg.hashCode);
    _$hash = $jc(_$hash, genbrugspladsAabningstider.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GenbrugspladsRecord')
          ..add('genbrugspladsNavn', genbrugspladsNavn)
          ..add('genbrugspladsTal', genbrugspladsTal)
          ..add('genbrugspladsLokation', genbrugspladsLokation)
          ..add('genbrugspladsKontakt', genbrugspladsKontakt)
          ..add('genbrugsPladsIndenbesoeg', genbrugsPladsIndenbesoeg)
          ..add('genbrugspladsAabningstider', genbrugspladsAabningstider)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GenbrugspladsRecordBuilder
    implements Builder<GenbrugspladsRecord, GenbrugspladsRecordBuilder> {
  _$GenbrugspladsRecord? _$v;

  String? _genbrugspladsNavn;
  String? get genbrugspladsNavn => _$this._genbrugspladsNavn;
  set genbrugspladsNavn(String? genbrugspladsNavn) =>
      _$this._genbrugspladsNavn = genbrugspladsNavn;

  int? _genbrugspladsTal;
  int? get genbrugspladsTal => _$this._genbrugspladsTal;
  set genbrugspladsTal(int? genbrugspladsTal) =>
      _$this._genbrugspladsTal = genbrugspladsTal;

  String? _genbrugspladsLokation;
  String? get genbrugspladsLokation => _$this._genbrugspladsLokation;
  set genbrugspladsLokation(String? genbrugspladsLokation) =>
      _$this._genbrugspladsLokation = genbrugspladsLokation;

  String? _genbrugspladsKontakt;
  String? get genbrugspladsKontakt => _$this._genbrugspladsKontakt;
  set genbrugspladsKontakt(String? genbrugspladsKontakt) =>
      _$this._genbrugspladsKontakt = genbrugspladsKontakt;

  String? _genbrugsPladsIndenbesoeg;
  String? get genbrugsPladsIndenbesoeg => _$this._genbrugsPladsIndenbesoeg;
  set genbrugsPladsIndenbesoeg(String? genbrugsPladsIndenbesoeg) =>
      _$this._genbrugsPladsIndenbesoeg = genbrugsPladsIndenbesoeg;

  String? _genbrugspladsAabningstider;
  String? get genbrugspladsAabningstider => _$this._genbrugspladsAabningstider;
  set genbrugspladsAabningstider(String? genbrugspladsAabningstider) =>
      _$this._genbrugspladsAabningstider = genbrugspladsAabningstider;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GenbrugspladsRecordBuilder() {
    GenbrugspladsRecord._initializeBuilder(this);
  }

  GenbrugspladsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genbrugspladsNavn = $v.genbrugspladsNavn;
      _genbrugspladsTal = $v.genbrugspladsTal;
      _genbrugspladsLokation = $v.genbrugspladsLokation;
      _genbrugspladsKontakt = $v.genbrugspladsKontakt;
      _genbrugsPladsIndenbesoeg = $v.genbrugsPladsIndenbesoeg;
      _genbrugspladsAabningstider = $v.genbrugspladsAabningstider;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenbrugspladsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenbrugspladsRecord;
  }

  @override
  void update(void Function(GenbrugspladsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenbrugspladsRecord build() => _build();

  _$GenbrugspladsRecord _build() {
    final _$result = _$v ??
        new _$GenbrugspladsRecord._(
            genbrugspladsNavn: genbrugspladsNavn,
            genbrugspladsTal: genbrugspladsTal,
            genbrugspladsLokation: genbrugspladsLokation,
            genbrugspladsKontakt: genbrugspladsKontakt,
            genbrugsPladsIndenbesoeg: genbrugsPladsIndenbesoeg,
            genbrugspladsAabningstider: genbrugspladsAabningstider,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
