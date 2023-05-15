// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContainerRecord> _$containerRecordSerializer =
    new _$ContainerRecordSerializer();

class _$ContainerRecordSerializer
    implements StructuredSerializer<ContainerRecord> {
  @override
  final Iterable<Type> types = const [ContainerRecord, _$ContainerRecord];
  @override
  final String wireName = 'ContainerRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContainerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.containerNummer;
    if (value != null) {
      result
        ..add('Container_Nummer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.containerNavn;
    if (value != null) {
      result
        ..add('Container_Navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.containerBeskrivelse;
    if (value != null) {
      result
        ..add('Container_Beskrivelse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.containerBillede;
    if (value != null) {
      result
        ..add('Container_Billede')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.containerFarve;
    if (value != null) {
      result
        ..add('Container_Farve')
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
  ContainerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContainerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Container_Nummer':
          result.containerNummer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Container_Navn':
          result.containerNavn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Container_Beskrivelse':
          result.containerBeskrivelse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Container_Billede':
          result.containerBillede = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Container_Farve':
          result.containerFarve = serializers.deserialize(value,
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

class _$ContainerRecord extends ContainerRecord {
  @override
  final int? containerNummer;
  @override
  final String? containerNavn;
  @override
  final String? containerBeskrivelse;
  @override
  final String? containerBillede;
  @override
  final String? containerFarve;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContainerRecord([void Function(ContainerRecordBuilder)? updates]) =>
      (new ContainerRecordBuilder()..update(updates))._build();

  _$ContainerRecord._(
      {this.containerNummer,
      this.containerNavn,
      this.containerBeskrivelse,
      this.containerBillede,
      this.containerFarve,
      this.ffRef})
      : super._();

  @override
  ContainerRecord rebuild(void Function(ContainerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContainerRecordBuilder toBuilder() =>
      new ContainerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContainerRecord &&
        containerNummer == other.containerNummer &&
        containerNavn == other.containerNavn &&
        containerBeskrivelse == other.containerBeskrivelse &&
        containerBillede == other.containerBillede &&
        containerFarve == other.containerFarve &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, containerNummer.hashCode);
    _$hash = $jc(_$hash, containerNavn.hashCode);
    _$hash = $jc(_$hash, containerBeskrivelse.hashCode);
    _$hash = $jc(_$hash, containerBillede.hashCode);
    _$hash = $jc(_$hash, containerFarve.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContainerRecord')
          ..add('containerNummer', containerNummer)
          ..add('containerNavn', containerNavn)
          ..add('containerBeskrivelse', containerBeskrivelse)
          ..add('containerBillede', containerBillede)
          ..add('containerFarve', containerFarve)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContainerRecordBuilder
    implements Builder<ContainerRecord, ContainerRecordBuilder> {
  _$ContainerRecord? _$v;

  int? _containerNummer;
  int? get containerNummer => _$this._containerNummer;
  set containerNummer(int? containerNummer) =>
      _$this._containerNummer = containerNummer;

  String? _containerNavn;
  String? get containerNavn => _$this._containerNavn;
  set containerNavn(String? containerNavn) =>
      _$this._containerNavn = containerNavn;

  String? _containerBeskrivelse;
  String? get containerBeskrivelse => _$this._containerBeskrivelse;
  set containerBeskrivelse(String? containerBeskrivelse) =>
      _$this._containerBeskrivelse = containerBeskrivelse;

  String? _containerBillede;
  String? get containerBillede => _$this._containerBillede;
  set containerBillede(String? containerBillede) =>
      _$this._containerBillede = containerBillede;

  String? _containerFarve;
  String? get containerFarve => _$this._containerFarve;
  set containerFarve(String? containerFarve) =>
      _$this._containerFarve = containerFarve;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContainerRecordBuilder() {
    ContainerRecord._initializeBuilder(this);
  }

  ContainerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _containerNummer = $v.containerNummer;
      _containerNavn = $v.containerNavn;
      _containerBeskrivelse = $v.containerBeskrivelse;
      _containerBillede = $v.containerBillede;
      _containerFarve = $v.containerFarve;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContainerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContainerRecord;
  }

  @override
  void update(void Function(ContainerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContainerRecord build() => _build();

  _$ContainerRecord _build() {
    final _$result = _$v ??
        new _$ContainerRecord._(
            containerNummer: containerNummer,
            containerNavn: containerNavn,
            containerBeskrivelse: containerBeskrivelse,
            containerBillede: containerBillede,
            containerFarve: containerFarve,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
