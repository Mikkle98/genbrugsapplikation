// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genbrugs_affald_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenbrugsAffaldRecord> _$genbrugsAffaldRecordSerializer =
    new _$GenbrugsAffaldRecordSerializer();

class _$GenbrugsAffaldRecordSerializer
    implements StructuredSerializer<GenbrugsAffaldRecord> {
  @override
  final Iterable<Type> types = const [
    GenbrugsAffaldRecord,
    _$GenbrugsAffaldRecord
  ];
  @override
  final String wireName = 'GenbrugsAffaldRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GenbrugsAffaldRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.genbrugsAffaldNummer;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Nummer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genbrugsAffaldNavn;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsAffaldBeskrivelse;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Beskrivelse')
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
    value = object.genbrugsAffaldBillede;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Billede')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsAffaldBidrag;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Bidrag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genbrugsAffaldFraktionBillede;
    if (value != null) {
      result
        ..add('GenbrugsAffald_Fraktion_Billede')
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
  GenbrugsAffaldRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenbrugsAffaldRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'GenbrugsAffald_Nummer':
          result.genbrugsAffaldNummer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'GenbrugsAffald_Navn':
          result.genbrugsAffaldNavn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsAffald_Beskrivelse':
          result.genbrugsAffaldBeskrivelse = serializers.deserialize(value,
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
        case 'GenbrugsAffald_Billede':
          result.genbrugsAffaldBillede = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsAffald_Bidrag':
          result.genbrugsAffaldBidrag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GenbrugsAffald_Fraktion_Billede':
          result.genbrugsAffaldFraktionBillede = serializers.deserialize(value,
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

class _$GenbrugsAffaldRecord extends GenbrugsAffaldRecord {
  @override
  final int? genbrugsAffaldNummer;
  @override
  final String? genbrugsAffaldNavn;
  @override
  final String? genbrugsAffaldBeskrivelse;
  @override
  final String? genbrugsAffaldContainer;
  @override
  final String? genbrugsAffaldFraktion;
  @override
  final String? genbrugsAffaldBillede;
  @override
  final String? genbrugsAffaldBidrag;
  @override
  final String? genbrugsAffaldFraktionBillede;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GenbrugsAffaldRecord(
          [void Function(GenbrugsAffaldRecordBuilder)? updates]) =>
      (new GenbrugsAffaldRecordBuilder()..update(updates))._build();

  _$GenbrugsAffaldRecord._(
      {this.genbrugsAffaldNummer,
      this.genbrugsAffaldNavn,
      this.genbrugsAffaldBeskrivelse,
      this.genbrugsAffaldContainer,
      this.genbrugsAffaldFraktion,
      this.genbrugsAffaldBillede,
      this.genbrugsAffaldBidrag,
      this.genbrugsAffaldFraktionBillede,
      this.ffRef})
      : super._();

  @override
  GenbrugsAffaldRecord rebuild(
          void Function(GenbrugsAffaldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenbrugsAffaldRecordBuilder toBuilder() =>
      new GenbrugsAffaldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenbrugsAffaldRecord &&
        genbrugsAffaldNummer == other.genbrugsAffaldNummer &&
        genbrugsAffaldNavn == other.genbrugsAffaldNavn &&
        genbrugsAffaldBeskrivelse == other.genbrugsAffaldBeskrivelse &&
        genbrugsAffaldContainer == other.genbrugsAffaldContainer &&
        genbrugsAffaldFraktion == other.genbrugsAffaldFraktion &&
        genbrugsAffaldBillede == other.genbrugsAffaldBillede &&
        genbrugsAffaldBidrag == other.genbrugsAffaldBidrag &&
        genbrugsAffaldFraktionBillede == other.genbrugsAffaldFraktionBillede &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genbrugsAffaldNummer.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldNavn.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldBeskrivelse.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldContainer.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldFraktion.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldBillede.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldBidrag.hashCode);
    _$hash = $jc(_$hash, genbrugsAffaldFraktionBillede.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GenbrugsAffaldRecord')
          ..add('genbrugsAffaldNummer', genbrugsAffaldNummer)
          ..add('genbrugsAffaldNavn', genbrugsAffaldNavn)
          ..add('genbrugsAffaldBeskrivelse', genbrugsAffaldBeskrivelse)
          ..add('genbrugsAffaldContainer', genbrugsAffaldContainer)
          ..add('genbrugsAffaldFraktion', genbrugsAffaldFraktion)
          ..add('genbrugsAffaldBillede', genbrugsAffaldBillede)
          ..add('genbrugsAffaldBidrag', genbrugsAffaldBidrag)
          ..add('genbrugsAffaldFraktionBillede', genbrugsAffaldFraktionBillede)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GenbrugsAffaldRecordBuilder
    implements Builder<GenbrugsAffaldRecord, GenbrugsAffaldRecordBuilder> {
  _$GenbrugsAffaldRecord? _$v;

  int? _genbrugsAffaldNummer;
  int? get genbrugsAffaldNummer => _$this._genbrugsAffaldNummer;
  set genbrugsAffaldNummer(int? genbrugsAffaldNummer) =>
      _$this._genbrugsAffaldNummer = genbrugsAffaldNummer;

  String? _genbrugsAffaldNavn;
  String? get genbrugsAffaldNavn => _$this._genbrugsAffaldNavn;
  set genbrugsAffaldNavn(String? genbrugsAffaldNavn) =>
      _$this._genbrugsAffaldNavn = genbrugsAffaldNavn;

  String? _genbrugsAffaldBeskrivelse;
  String? get genbrugsAffaldBeskrivelse => _$this._genbrugsAffaldBeskrivelse;
  set genbrugsAffaldBeskrivelse(String? genbrugsAffaldBeskrivelse) =>
      _$this._genbrugsAffaldBeskrivelse = genbrugsAffaldBeskrivelse;

  String? _genbrugsAffaldContainer;
  String? get genbrugsAffaldContainer => _$this._genbrugsAffaldContainer;
  set genbrugsAffaldContainer(String? genbrugsAffaldContainer) =>
      _$this._genbrugsAffaldContainer = genbrugsAffaldContainer;

  String? _genbrugsAffaldFraktion;
  String? get genbrugsAffaldFraktion => _$this._genbrugsAffaldFraktion;
  set genbrugsAffaldFraktion(String? genbrugsAffaldFraktion) =>
      _$this._genbrugsAffaldFraktion = genbrugsAffaldFraktion;

  String? _genbrugsAffaldBillede;
  String? get genbrugsAffaldBillede => _$this._genbrugsAffaldBillede;
  set genbrugsAffaldBillede(String? genbrugsAffaldBillede) =>
      _$this._genbrugsAffaldBillede = genbrugsAffaldBillede;

  String? _genbrugsAffaldBidrag;
  String? get genbrugsAffaldBidrag => _$this._genbrugsAffaldBidrag;
  set genbrugsAffaldBidrag(String? genbrugsAffaldBidrag) =>
      _$this._genbrugsAffaldBidrag = genbrugsAffaldBidrag;

  String? _genbrugsAffaldFraktionBillede;
  String? get genbrugsAffaldFraktionBillede =>
      _$this._genbrugsAffaldFraktionBillede;
  set genbrugsAffaldFraktionBillede(String? genbrugsAffaldFraktionBillede) =>
      _$this._genbrugsAffaldFraktionBillede = genbrugsAffaldFraktionBillede;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GenbrugsAffaldRecordBuilder() {
    GenbrugsAffaldRecord._initializeBuilder(this);
  }

  GenbrugsAffaldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genbrugsAffaldNummer = $v.genbrugsAffaldNummer;
      _genbrugsAffaldNavn = $v.genbrugsAffaldNavn;
      _genbrugsAffaldBeskrivelse = $v.genbrugsAffaldBeskrivelse;
      _genbrugsAffaldContainer = $v.genbrugsAffaldContainer;
      _genbrugsAffaldFraktion = $v.genbrugsAffaldFraktion;
      _genbrugsAffaldBillede = $v.genbrugsAffaldBillede;
      _genbrugsAffaldBidrag = $v.genbrugsAffaldBidrag;
      _genbrugsAffaldFraktionBillede = $v.genbrugsAffaldFraktionBillede;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenbrugsAffaldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenbrugsAffaldRecord;
  }

  @override
  void update(void Function(GenbrugsAffaldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenbrugsAffaldRecord build() => _build();

  _$GenbrugsAffaldRecord _build() {
    final _$result = _$v ??
        new _$GenbrugsAffaldRecord._(
            genbrugsAffaldNummer: genbrugsAffaldNummer,
            genbrugsAffaldNavn: genbrugsAffaldNavn,
            genbrugsAffaldBeskrivelse: genbrugsAffaldBeskrivelse,
            genbrugsAffaldContainer: genbrugsAffaldContainer,
            genbrugsAffaldFraktion: genbrugsAffaldFraktion,
            genbrugsAffaldBillede: genbrugsAffaldBillede,
            genbrugsAffaldBidrag: genbrugsAffaldBidrag,
            genbrugsAffaldFraktionBillede: genbrugsAffaldFraktionBillede,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
