import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'albums_record.g.dart';

abstract class AlbumsRecord
    implements Built<AlbumsRecord, AlbumsRecordBuilder> {
  static Serializer<AlbumsRecord> get serializer => _$albumsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'album_name')
  String get albumName;

  @nullable
  @BuiltValueField(wireName: 'album_artist')
  DocumentReference get albumArtist;

  @nullable
  @BuiltValueField(wireName: 'album_cover')
  String get albumCover;

  @nullable
  @BuiltValueField(wireName: 'album_tracks')
  DocumentReference get albumTracks;

  @nullable
  @BuiltValueField(wireName: 'album_details')
  String get albumDetails;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlbumsRecordBuilder builder) => builder
    ..albumName = ''
    ..albumCover = ''
    ..albumDetails = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Albums');

  static Stream<AlbumsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AlbumsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlbumsRecord._();
  factory AlbumsRecord([void Function(AlbumsRecordBuilder) updates]) =
      _$AlbumsRecord;

  static AlbumsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlbumsRecordData({
  String albumName,
  DocumentReference albumArtist,
  String albumCover,
  DocumentReference albumTracks,
  String albumDetails,
}) =>
    serializers.toFirestore(
        AlbumsRecord.serializer,
        AlbumsRecord((a) => a
          ..albumName = albumName
          ..albumArtist = albumArtist
          ..albumCover = albumCover
          ..albumTracks = albumTracks
          ..albumDetails = albumDetails));
