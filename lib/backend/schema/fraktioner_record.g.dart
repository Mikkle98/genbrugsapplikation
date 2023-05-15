// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fraktioner_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FraktionerRecord> _$fraktionerRecordSerializer =
    new _$FraktionerRecordSerializer();

class _$FraktionerRecordSerializer
    implements StructuredSerializer<FraktionerRecord> {
  @override
  final Iterable<Type> types = const [FraktionerRecord, _$FraktionerRecord];
  @override
  final String wireName = 'FraktionerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FraktionerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fraktionsNavn;
    if (value != null) {
      result
        ..add('Fraktions_Navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fraktionFarve;
    if (value != null) {
      result
        ..add('Fraktion_Farve')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fraktionBillede;
    if (value != null) {
      result
        ..add('Fraktion_Billede')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fraktionBeskrivelse;
    if (value != null) {
      result
        ..add('Fraktion_Beskrivelse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fraktionNummer;
    if (value != null) {
      result
        ..add('Fraktion_Nummer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  FraktionerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FraktionerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fraktions_Navn':
          result.fraktionsNavn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fraktion_Farve':
          result.fraktionFarve = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fraktion_Billede':
          result.fraktionBillede = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fraktion_Beskrivelse':
          result.fraktionBeskrivelse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fraktion_Nummer':
          result.fraktionNummer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$FraktionerRecord extends FraktionerRecord {
  @override
  final String? fraktionsNavn;
  @override
  final String? fraktionFarve;
  @override
  final String? fraktionBillede;
  @override
  final String? fraktionBeskrivelse;
  @override
  final int? fraktionNummer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FraktionerRecord(
          [void Function(FraktionerRecordBuilder)? updates]) =>
      (new FraktionerRecordBuilder()..update(updates))._build();

  _$FraktionerRecord._(
      {this.fraktionsNavn,
      this.fraktionFarve,
      this.fraktionBillede,
      this.fraktionBeskrivelse,
      this.fraktionNummer,
      this.ffRef})
      : super._();

  @override
  FraktionerRecord rebuild(void Function(FraktionerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FraktionerRecordBuilder toBuilder() =>
      new FraktionerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FraktionerRecord &&
        fraktionsNavn == other.fraktionsNavn &&
        fraktionFarve == other.fraktionFarve &&
        fraktionBillede == other.fraktionBillede &&
        fraktionBeskrivelse == other.fraktionBeskrivelse &&
        fraktionNummer == other.fraktionNummer &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fraktionsNavn.hashCode);
    _$hash = $jc(_$hash, fraktionFarve.hashCode);
    _$hash = $jc(_$hash, fraktionBillede.hashCode);
    _$hash = $jc(_$hash, fraktionBeskrivelse.hashCode);
    _$hash = $jc(_$hash, fraktionNummer.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FraktionerRecord')
          ..add('fraktionsNavn', fraktionsNavn)
          ..add('fraktionFarve', fraktionFarve)
          ..add('fraktionBillede', fraktionBillede)
          ..add('fraktionBeskrivelse', fraktionBeskrivelse)
          ..add('fraktionNummer', fraktionNummer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FraktionerRecordBuilder
    implements Builder<FraktionerRecord, FraktionerRecordBuilder> {
  _$FraktionerRecord? _$v;

  String? _fraktionsNavn;
  String? get fraktionsNavn => _$this._fraktionsNavn;
  set fraktionsNavn(String? fraktionsNavn) =>
      _$this._fraktionsNavn = fraktionsNavn;

  String? _fraktionFarve;
  String? get fraktionFarve => _$this._fraktionFarve;
  set fraktionFarve(String? fraktionFarve) =>
      _$this._fraktionFarve = fraktionFarve;

  String? _fraktionBillede;
  String? get fraktionBillede => _$this._fraktionBillede;
  set fraktionBillede(String? fraktionBillede) =>
      _$this._fraktionBillede = fraktionBillede;

  String? _fraktionBeskrivelse;
  String? get fraktionBeskrivelse => _$this._fraktionBeskrivelse;
  set fraktionBeskrivelse(String? fraktionBeskrivelse) =>
      _$this._fraktionBeskrivelse = fraktionBeskrivelse;

  int? _fraktionNummer;
  int? get fraktionNummer => _$this._fraktionNummer;
  set fraktionNummer(int? fraktionNummer) =>
      _$this._fraktionNummer = fraktionNummer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FraktionerRecordBuilder() {
    FraktionerRecord._initializeBuilder(this);
  }

  FraktionerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fraktionsNavn = $v.fraktionsNavn;
      _fraktionFarve = $v.fraktionFarve;
      _fraktionBillede = $v.fraktionBillede;
      _fraktionBeskrivelse = $v.fraktionBeskrivelse;
      _fraktionNummer = $v.fraktionNummer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FraktionerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FraktionerRecord;
  }

  @override
  void update(void Function(FraktionerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FraktionerRecord build() => _build();

  _$FraktionerRecord _build() {
    final _$result = _$v ??
        new _$FraktionerRecord._(
            fraktionsNavn: fraktionsNavn,
            fraktionFarve: fraktionFarve,
            fraktionBillede: fraktionBillede,
            fraktionBeskrivelse: fraktionBeskrivelse,
            fraktionNummer: fraktionNummer,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
