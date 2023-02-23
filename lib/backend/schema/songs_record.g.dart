// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SongsRecord> _$songsRecordSerializer = new _$SongsRecordSerializer();

class _$SongsRecordSerializer implements StructuredSerializer<SongsRecord> {
  @override
  final Iterable<Type> types = const [SongsRecord, _$SongsRecord];
  @override
  final String wireName = 'SongsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SongsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.songSingle;
    if (value != null) {
      result
        ..add('song_single')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.songName;
    if (value != null) {
      result
        ..add('song_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songArtist;
    if (value != null) {
      result
        ..add('song_artist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.songDetails;
    if (value != null) {
      result
        ..add('song_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songImage;
    if (value != null) {
      result
        ..add('song_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songAudioFile;
    if (value != null) {
      result
        ..add('song_audioFile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  SongsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SongsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'song_single':
          result.songSingle = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'song_name':
          result.songName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_artist':
          result.songArtist = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'song_details':
          result.songDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_image':
          result.songImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_audioFile':
          result.songAudioFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$SongsRecord extends SongsRecord {
  @override
  final bool songSingle;
  @override
  final String songName;
  @override
  final DocumentReference<Object> songArtist;
  @override
  final String songDetails;
  @override
  final String songImage;
  @override
  final String songAudioFile;
  @override
  final DocumentReference<Object> reference;

  factory _$SongsRecord([void Function(SongsRecordBuilder) updates]) =>
      (new SongsRecordBuilder()..update(updates)).build();

  _$SongsRecord._(
      {this.songSingle,
      this.songName,
      this.songArtist,
      this.songDetails,
      this.songImage,
      this.songAudioFile,
      this.reference})
      : super._();

  @override
  SongsRecord rebuild(void Function(SongsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SongsRecordBuilder toBuilder() => new SongsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SongsRecord &&
        songSingle == other.songSingle &&
        songName == other.songName &&
        songArtist == other.songArtist &&
        songDetails == other.songDetails &&
        songImage == other.songImage &&
        songAudioFile == other.songAudioFile &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, songSingle.hashCode), songName.hashCode),
                        songArtist.hashCode),
                    songDetails.hashCode),
                songImage.hashCode),
            songAudioFile.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SongsRecord')
          ..add('songSingle', songSingle)
          ..add('songName', songName)
          ..add('songArtist', songArtist)
          ..add('songDetails', songDetails)
          ..add('songImage', songImage)
          ..add('songAudioFile', songAudioFile)
          ..add('reference', reference))
        .toString();
  }
}

class SongsRecordBuilder implements Builder<SongsRecord, SongsRecordBuilder> {
  _$SongsRecord _$v;

  bool _songSingle;
  bool get songSingle => _$this._songSingle;
  set songSingle(bool songSingle) => _$this._songSingle = songSingle;

  String _songName;
  String get songName => _$this._songName;
  set songName(String songName) => _$this._songName = songName;

  DocumentReference<Object> _songArtist;
  DocumentReference<Object> get songArtist => _$this._songArtist;
  set songArtist(DocumentReference<Object> songArtist) =>
      _$this._songArtist = songArtist;

  String _songDetails;
  String get songDetails => _$this._songDetails;
  set songDetails(String songDetails) => _$this._songDetails = songDetails;

  String _songImage;
  String get songImage => _$this._songImage;
  set songImage(String songImage) => _$this._songImage = songImage;

  String _songAudioFile;
  String get songAudioFile => _$this._songAudioFile;
  set songAudioFile(String songAudioFile) =>
      _$this._songAudioFile = songAudioFile;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SongsRecordBuilder() {
    SongsRecord._initializeBuilder(this);
  }

  SongsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _songSingle = $v.songSingle;
      _songName = $v.songName;
      _songArtist = $v.songArtist;
      _songDetails = $v.songDetails;
      _songImage = $v.songImage;
      _songAudioFile = $v.songAudioFile;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SongsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SongsRecord;
  }

  @override
  void update(void Function(SongsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SongsRecord build() {
    final _$result = _$v ??
        new _$SongsRecord._(
            songSingle: songSingle,
            songName: songName,
            songArtist: songArtist,
            songDetails: songDetails,
            songImage: songImage,
            songAudioFile: songAudioFile,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
