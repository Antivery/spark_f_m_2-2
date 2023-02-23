import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'play_list_record.g.dart';

abstract class PlayListRecord
    implements Built<PlayListRecord, PlayListRecordBuilder> {
  static Serializer<PlayListRecord> get serializer =>
      _$playListRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Playlist_name')
  String get playlistName;

  @nullable
  @BuiltValueField(wireName: 'songs_inPlaylist')
  BuiltList<DocumentReference> get songsInPlaylist;

  @nullable
  @BuiltValueField(wireName: 'playlist_image')
  String get playlistImage;

  @nullable
  @BuiltValueField(wireName: 'playlist_Detalis')
  String get playlistDetalis;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PlayListRecordBuilder builder) => builder
    ..playlistName = ''
    ..songsInPlaylist = ListBuilder()
    ..playlistImage = ''
    ..playlistDetalis = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PlayList');

  static Stream<PlayListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PlayListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlayListRecord._();
  factory PlayListRecord([void Function(PlayListRecordBuilder) updates]) =
      _$PlayListRecord;

  static PlayListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlayListRecordData({
  String playlistName,
  String playlistImage,
  String playlistDetalis,
}) =>
    serializers.toFirestore(
        PlayListRecord.serializer,
        PlayListRecord((p) => p
          ..playlistName = playlistName
          ..songsInPlaylist = null
          ..playlistImage = playlistImage
          ..playlistDetalis = playlistDetalis));
