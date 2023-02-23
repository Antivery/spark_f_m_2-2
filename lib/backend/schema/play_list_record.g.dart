// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlayListRecord> _$playListRecordSerializer =
    new _$PlayListRecordSerializer();

class _$PlayListRecordSerializer
    implements StructuredSerializer<PlayListRecord> {
  @override
  final Iterable<Type> types = const [PlayListRecord, _$PlayListRecord];
  @override
  final String wireName = 'PlayListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PlayListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.playlistName;
    if (value != null) {
      result
        ..add('Playlist_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songsInPlaylist;
    if (value != null) {
      result
        ..add('songs_inPlaylist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.playlistImage;
    if (value != null) {
      result
        ..add('playlist_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playlistDetalis;
    if (value != null) {
      result
        ..add('playlist_Detalis')
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
  PlayListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlayListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Playlist_name':
          result.playlistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'songs_inPlaylist':
          result.songsInPlaylist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'playlist_image':
          result.playlistImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'playlist_Detalis':
          result.playlistDetalis = serializers.deserialize(value,
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

class _$PlayListRecord extends PlayListRecord {
  @override
  final String playlistName;
  @override
  final BuiltList<DocumentReference<Object>> songsInPlaylist;
  @override
  final String playlistImage;
  @override
  final String playlistDetalis;
  @override
  final DocumentReference<Object> reference;

  factory _$PlayListRecord([void Function(PlayListRecordBuilder) updates]) =>
      (new PlayListRecordBuilder()..update(updates)).build();

  _$PlayListRecord._(
      {this.playlistName,
      this.songsInPlaylist,
      this.playlistImage,
      this.playlistDetalis,
      this.reference})
      : super._();

  @override
  PlayListRecord rebuild(void Function(PlayListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayListRecordBuilder toBuilder() =>
      new PlayListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayListRecord &&
        playlistName == other.playlistName &&
        songsInPlaylist == other.songsInPlaylist &&
        playlistImage == other.playlistImage &&
        playlistDetalis == other.playlistDetalis &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, playlistName.hashCode), songsInPlaylist.hashCode),
                playlistImage.hashCode),
            playlistDetalis.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlayListRecord')
          ..add('playlistName', playlistName)
          ..add('songsInPlaylist', songsInPlaylist)
          ..add('playlistImage', playlistImage)
          ..add('playlistDetalis', playlistDetalis)
          ..add('reference', reference))
        .toString();
  }
}

class PlayListRecordBuilder
    implements Builder<PlayListRecord, PlayListRecordBuilder> {
  _$PlayListRecord _$v;

  String _playlistName;
  String get playlistName => _$this._playlistName;
  set playlistName(String playlistName) => _$this._playlistName = playlistName;

  ListBuilder<DocumentReference<Object>> _songsInPlaylist;
  ListBuilder<DocumentReference<Object>> get songsInPlaylist =>
      _$this._songsInPlaylist ??= new ListBuilder<DocumentReference<Object>>();
  set songsInPlaylist(ListBuilder<DocumentReference<Object>> songsInPlaylist) =>
      _$this._songsInPlaylist = songsInPlaylist;

  String _playlistImage;
  String get playlistImage => _$this._playlistImage;
  set playlistImage(String playlistImage) =>
      _$this._playlistImage = playlistImage;

  String _playlistDetalis;
  String get playlistDetalis => _$this._playlistDetalis;
  set playlistDetalis(String playlistDetalis) =>
      _$this._playlistDetalis = playlistDetalis;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PlayListRecordBuilder() {
    PlayListRecord._initializeBuilder(this);
  }

  PlayListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _playlistName = $v.playlistName;
      _songsInPlaylist = $v.songsInPlaylist?.toBuilder();
      _playlistImage = $v.playlistImage;
      _playlistDetalis = $v.playlistDetalis;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayListRecord;
  }

  @override
  void update(void Function(PlayListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlayListRecord build() {
    _$PlayListRecord _$result;
    try {
      _$result = _$v ??
          new _$PlayListRecord._(
              playlistName: playlistName,
              songsInPlaylist: _songsInPlaylist?.build(),
              playlistImage: playlistImage,
              playlistDetalis: playlistDetalis,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'songsInPlaylist';
        _songsInPlaylist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlayListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
