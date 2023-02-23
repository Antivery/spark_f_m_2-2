// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlbumsRecord> _$albumsRecordSerializer =
    new _$AlbumsRecordSerializer();

class _$AlbumsRecordSerializer implements StructuredSerializer<AlbumsRecord> {
  @override
  final Iterable<Type> types = const [AlbumsRecord, _$AlbumsRecord];
  @override
  final String wireName = 'AlbumsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AlbumsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.albumName;
    if (value != null) {
      result
        ..add('album_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.albumArtist;
    if (value != null) {
      result
        ..add('album_artist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.albumCover;
    if (value != null) {
      result
        ..add('album_cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.albumTracks;
    if (value != null) {
      result
        ..add('album_tracks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.albumDetails;
    if (value != null) {
      result
        ..add('album_details')
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
  AlbumsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlbumsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'album_name':
          result.albumName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'album_artist':
          result.albumArtist = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'album_cover':
          result.albumCover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'album_tracks':
          result.albumTracks = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'album_details':
          result.albumDetails = serializers.deserialize(value,
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

class _$AlbumsRecord extends AlbumsRecord {
  @override
  final String albumName;
  @override
  final DocumentReference<Object> albumArtist;
  @override
  final String albumCover;
  @override
  final DocumentReference<Object> albumTracks;
  @override
  final String albumDetails;
  @override
  final DocumentReference<Object> reference;

  factory _$AlbumsRecord([void Function(AlbumsRecordBuilder) updates]) =>
      (new AlbumsRecordBuilder()..update(updates)).build();

  _$AlbumsRecord._(
      {this.albumName,
      this.albumArtist,
      this.albumCover,
      this.albumTracks,
      this.albumDetails,
      this.reference})
      : super._();

  @override
  AlbumsRecord rebuild(void Function(AlbumsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumsRecordBuilder toBuilder() => new AlbumsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumsRecord &&
        albumName == other.albumName &&
        albumArtist == other.albumArtist &&
        albumCover == other.albumCover &&
        albumTracks == other.albumTracks &&
        albumDetails == other.albumDetails &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, albumName.hashCode), albumArtist.hashCode),
                    albumCover.hashCode),
                albumTracks.hashCode),
            albumDetails.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlbumsRecord')
          ..add('albumName', albumName)
          ..add('albumArtist', albumArtist)
          ..add('albumCover', albumCover)
          ..add('albumTracks', albumTracks)
          ..add('albumDetails', albumDetails)
          ..add('reference', reference))
        .toString();
  }
}

class AlbumsRecordBuilder
    implements Builder<AlbumsRecord, AlbumsRecordBuilder> {
  _$AlbumsRecord _$v;

  String _albumName;
  String get albumName => _$this._albumName;
  set albumName(String albumName) => _$this._albumName = albumName;

  DocumentReference<Object> _albumArtist;
  DocumentReference<Object> get albumArtist => _$this._albumArtist;
  set albumArtist(DocumentReference<Object> albumArtist) =>
      _$this._albumArtist = albumArtist;

  String _albumCover;
  String get albumCover => _$this._albumCover;
  set albumCover(String albumCover) => _$this._albumCover = albumCover;

  DocumentReference<Object> _albumTracks;
  DocumentReference<Object> get albumTracks => _$this._albumTracks;
  set albumTracks(DocumentReference<Object> albumTracks) =>
      _$this._albumTracks = albumTracks;

  String _albumDetails;
  String get albumDetails => _$this._albumDetails;
  set albumDetails(String albumDetails) => _$this._albumDetails = albumDetails;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AlbumsRecordBuilder() {
    AlbumsRecord._initializeBuilder(this);
  }

  AlbumsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _albumName = $v.albumName;
      _albumArtist = $v.albumArtist;
      _albumCover = $v.albumCover;
      _albumTracks = $v.albumTracks;
      _albumDetails = $v.albumDetails;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumsRecord;
  }

  @override
  void update(void Function(AlbumsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlbumsRecord build() {
    final _$result = _$v ??
        new _$AlbumsRecord._(
            albumName: albumName,
            albumArtist: albumArtist,
            albumCover: albumCover,
            albumTracks: albumTracks,
            albumDetails: albumDetails,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
