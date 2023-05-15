// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rute_1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rute1Record> _$rute1RecordSerializer = new _$Rute1RecordSerializer();

class _$Rute1RecordSerializer implements StructuredSerializer<Rute1Record> {
  @override
  final Iterable<Type> types = const [Rute1Record, _$Rute1Record];
  @override
  final String wireName = 'Rute1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rute1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.navn;
    if (value != null) {
      result
        ..add('Navn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.container;
    if (value != null) {
      result
        ..add('Container')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fraktion;
    if (value != null) {
      result
        ..add('Fraktion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beskrivelse;
    if (value != null) {
      result
        ..add('Beskrivelse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billede;
    if (value != null) {
      result
        ..add('billede')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bidrag;
    if (value != null) {
      result
        ..add('Bidrag')
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
  Rute1Record deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Rute1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Navn':
          result.navn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Container':
          result.container = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fraktion':
          result.fraktion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Beskrivelse':
          result.beskrivelse = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billede':
          result.billede = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bidrag':
          result.bidrag = serializers.deserialize(value,
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

class _$Rute1Record extends Rute1Record {
  @override
  final String? navn;
  @override
  final String? container;
  @override
  final String? fraktion;
  @override
  final String? beskrivelse;
  @override
  final String? billede;
  @override
  final String? bidrag;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Rute1Record([void Function(Rute1RecordBuilder)? updates]) =>
      (new Rute1RecordBuilder()..update(updates))._build();

  _$Rute1Record._(
      {this.navn,
      this.container,
      this.fraktion,
      this.beskrivelse,
      this.billede,
      this.bidrag,
      this.ffRef})
      : super._();

  @override
  Rute1Record rebuild(void Function(Rute1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Rute1RecordBuilder toBuilder() => new Rute1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rute1Record &&
        navn == other.navn &&
        container == other.container &&
        fraktion == other.fraktion &&
        beskrivelse == other.beskrivelse &&
        billede == other.billede &&
        bidrag == other.bidrag &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, navn.hashCode);
    _$hash = $jc(_$hash, container.hashCode);
    _$hash = $jc(_$hash, fraktion.hashCode);
    _$hash = $jc(_$hash, beskrivelse.hashCode);
    _$hash = $jc(_$hash, billede.hashCode);
    _$hash = $jc(_$hash, bidrag.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rute1Record')
          ..add('navn', navn)
          ..add('container', container)
          ..add('fraktion', fraktion)
          ..add('beskrivelse', beskrivelse)
          ..add('billede', billede)
          ..add('bidrag', bidrag)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Rute1RecordBuilder implements Builder<Rute1Record, Rute1RecordBuilder> {
  _$Rute1Record? _$v;

  String? _navn;
  String? get navn => _$this._navn;
  set navn(String? navn) => _$this._navn = navn;

  String? _container;
  String? get container => _$this._container;
  set container(String? container) => _$this._container = container;

  String? _fraktion;
  String? get fraktion => _$this._fraktion;
  set fraktion(String? fraktion) => _$this._fraktion = fraktion;

  String? _beskrivelse;
  String? get beskrivelse => _$this._beskrivelse;
  set beskrivelse(String? beskrivelse) => _$this._beskrivelse = beskrivelse;

  String? _billede;
  String? get billede => _$this._billede;
  set billede(String? billede) => _$this._billede = billede;

  String? _bidrag;
  String? get bidrag => _$this._bidrag;
  set bidrag(String? bidrag) => _$this._bidrag = bidrag;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Rute1RecordBuilder() {
    Rute1Record._initializeBuilder(this);
  }

  Rute1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _navn = $v.navn;
      _container = $v.container;
      _fraktion = $v.fraktion;
      _beskrivelse = $v.beskrivelse;
      _billede = $v.billede;
      _bidrag = $v.bidrag;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rute1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rute1Record;
  }

  @override
  void update(void Function(Rute1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rute1Record build() => _build();

  _$Rute1Record _build() {
    final _$result = _$v ??
        new _$Rute1Record._(
            navn: navn,
            container: container,
            fraktion: fraktion,
            beskrivelse: beskrivelse,
            billede: billede,
            bidrag: bidrag,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
