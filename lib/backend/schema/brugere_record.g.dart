// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brugere_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrugereRecord> _$brugereRecordSerializer =
    new _$BrugereRecordSerializer();

class _$BrugereRecordSerializer implements StructuredSerializer<BrugereRecord> {
  @override
  final Iterable<Type> types = const [BrugereRecord, _$BrugereRecord];
  @override
  final String wireName = 'BrugereRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BrugereRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.genbrugsplads;
    if (value != null) {
      result
        ..add('genbrugsplads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bestiltTid;
    if (value != null) {
      result
        ..add('bestilt_tid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bestiltTid1;
    if (value != null) {
      result
        ..add('bestilt_tid1')
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
  BrugereRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrugereRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'genbrugsplads':
          result.genbrugsplads = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bestilt_tid':
          result.bestiltTid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bestilt_tid1':
          result.bestiltTid1 = serializers.deserialize(value,
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

class _$BrugereRecord extends BrugereRecord {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? genbrugsplads;
  @override
  final String? bestiltTid;
  @override
  final String? phoneNumber;
  @override
  final int? bestiltTid1;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BrugereRecord([void Function(BrugereRecordBuilder)? updates]) =>
      (new BrugereRecordBuilder()..update(updates))._build();

  _$BrugereRecord._(
      {this.email,
      this.password,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.genbrugsplads,
      this.bestiltTid,
      this.phoneNumber,
      this.bestiltTid1,
      this.ffRef})
      : super._();

  @override
  BrugereRecord rebuild(void Function(BrugereRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrugereRecordBuilder toBuilder() => new BrugereRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrugereRecord &&
        email == other.email &&
        password == other.password &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        genbrugsplads == other.genbrugsplads &&
        bestiltTid == other.bestiltTid &&
        phoneNumber == other.phoneNumber &&
        bestiltTid1 == other.bestiltTid1 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, genbrugsplads.hashCode);
    _$hash = $jc(_$hash, bestiltTid.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, bestiltTid1.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BrugereRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('genbrugsplads', genbrugsplads)
          ..add('bestiltTid', bestiltTid)
          ..add('phoneNumber', phoneNumber)
          ..add('bestiltTid1', bestiltTid1)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BrugereRecordBuilder
    implements Builder<BrugereRecord, BrugereRecordBuilder> {
  _$BrugereRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _genbrugsplads;
  String? get genbrugsplads => _$this._genbrugsplads;
  set genbrugsplads(String? genbrugsplads) =>
      _$this._genbrugsplads = genbrugsplads;

  String? _bestiltTid;
  String? get bestiltTid => _$this._bestiltTid;
  set bestiltTid(String? bestiltTid) => _$this._bestiltTid = bestiltTid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _bestiltTid1;
  int? get bestiltTid1 => _$this._bestiltTid1;
  set bestiltTid1(int? bestiltTid1) => _$this._bestiltTid1 = bestiltTid1;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BrugereRecordBuilder() {
    BrugereRecord._initializeBuilder(this);
  }

  BrugereRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _genbrugsplads = $v.genbrugsplads;
      _bestiltTid = $v.bestiltTid;
      _phoneNumber = $v.phoneNumber;
      _bestiltTid1 = $v.bestiltTid1;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrugereRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BrugereRecord;
  }

  @override
  void update(void Function(BrugereRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BrugereRecord build() => _build();

  _$BrugereRecord _build() {
    final _$result = _$v ??
        new _$BrugereRecord._(
            email: email,
            password: password,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            genbrugsplads: genbrugsplads,
            bestiltTid: bestiltTid,
            phoneNumber: phoneNumber,
            bestiltTid1: bestiltTid1,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
