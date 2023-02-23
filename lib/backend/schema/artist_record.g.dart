// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArtistRecord> _$artistRecordSerializer =
    new _$ArtistRecordSerializer();

class _$ArtistRecordSerializer implements StructuredSerializer<ArtistRecord> {
  @override
  final Iterable<Type> types = const [ArtistRecord, _$ArtistRecord];
  @override
  final String wireName = 'ArtistRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ArtistRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.artistName;
    if (value != null) {
      result
        ..add('artist_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistBio;
    if (value != null) {
      result
        ..add('artist_bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistImage;
    if (value != null) {
      result
        ..add('artist_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artistAlbums;
    if (value != null) {
      result
        ..add('artist_albums')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.artistSongs;
    if (value != null) {
      result
        ..add('artist_songs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  ArtistRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtistRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'artist_name':
          result.artistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artist_bio':
          result.artistBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artist_image':
          result.artistImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artist_albums':
          result.artistAlbums.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'artist_songs':
          result.artistSongs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$ArtistRecord extends ArtistRecord {
  @override
  final String artistName;
  @override
  final String artistBio;
  @override
  final String artistImage;
  @override
  final BuiltList<DocumentReference<Object>> artistAlbums;
  @override
  final BuiltList<DocumentReference<Object>> artistSongs;
  @override
  final DocumentReference<Object> reference;

  factory _$ArtistRecord([void Function(ArtistRecordBuilder) updates]) =>
      (new ArtistRecordBuilder()..update(updates)).build();

  _$ArtistRecord._(
      {this.artistName,
      this.artistBio,
      this.artistImage,
      this.artistAlbums,
      this.artistSongs,
      this.reference})
      : super._();

  @override
  ArtistRecord rebuild(void Function(ArtistRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtistRecordBuilder toBuilder() => new ArtistRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArtistRecord &&
        artistName == other.artistName &&
        artistBio == other.artistBio &&
        artistImage == other.artistImage &&
        artistAlbums == other.artistAlbums &&
        artistSongs == other.artistSongs &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, artistName.hashCode), artistBio.hashCode),
                    artistImage.hashCode),
                artistAlbums.hashCode),
            artistSongs.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArtistRecord')
          ..add('artistName', artistName)
          ..add('artistBio', artistBio)
          ..add('artistImage', artistImage)
          ..add('artistAlbums', artistAlbums)
          ..add('artistSongs', artistSongs)
          ..add('reference', reference))
        .toString();
  }
}

class ArtistRecordBuilder
    implements Builder<ArtistRecord, ArtistRecordBuilder> {
  _$ArtistRecord _$v;

  String _artistName;
  String get artistName => _$this._artistName;
  set artistName(String artistName) => _$this._artistName = artistName;

  String _artistBio;
  String get artistBio => _$this._artistBio;
  set artistBio(String artistBio) => _$this._artistBio = artistBio;

  String _artistImage;
  String get artistImage => _$this._artistImage;
  set artistImage(String artistImage) => _$this._artistImage = artistImage;

  ListBuilder<DocumentReference<Object>> _artistAlbums;
  ListBuilder<DocumentReference<Object>> get artistAlbums =>
      _$this._artistAlbums ??= new ListBuilder<DocumentReference<Object>>();
  set artistAlbums(ListBuilder<DocumentReference<Object>> artistAlbums) =>
      _$this._artistAlbums = artistAlbums;

  ListBuilder<DocumentReference<Object>> _artistSongs;
  ListBuilder<DocumentReference<Object>> get artistSongs =>
      _$this._artistSongs ??= new ListBuilder<DocumentReference<Object>>();
  set artistSongs(ListBuilder<DocumentReference<Object>> artistSongs) =>
      _$this._artistSongs = artistSongs;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ArtistRecordBuilder() {
    ArtistRecord._initializeBuilder(this);
  }

  ArtistRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _artistName = $v.artistName;
      _artistBio = $v.artistBio;
      _artistImage = $v.artistImage;
      _artistAlbums = $v.artistAlbums?.toBuilder();
      _artistSongs = $v.artistSongs?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArtistRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArtistRecord;
  }

  @override
  void update(void Function(ArtistRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArtistRecord build() {
    _$ArtistRecord _$result;
    try {
      _$result = _$v ??
          new _$ArtistRecord._(
              artistName: artistName,
              artistBio: artistBio,
              artistImage: artistImage,
              artistAlbums: _artistAlbums?.build(),
              artistSongs: _artistSongs?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'artistAlbums';
        _artistAlbums?.build();
        _$failedField = 'artistSongs';
        _artistSongs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ArtistRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
