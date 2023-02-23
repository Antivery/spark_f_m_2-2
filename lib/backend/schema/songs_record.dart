import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'songs_record.g.dart';

abstract class SongsRecord implements Built<SongsRecord, SongsRecordBuilder> {
  static Serializer<SongsRecord> get serializer => _$songsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'song_single')
  bool get songSingle;

  @nullable
  @BuiltValueField(wireName: 'song_name')
  String get songName;

  @nullable
  @BuiltValueField(wireName: 'song_artist')
  DocumentReference get songArtist;

  @nullable
  @BuiltValueField(wireName: 'song_details')
  String get songDetails;

  @nullable
  @BuiltValueField(wireName: 'song_image')
  String get songImage;

  @nullable
  @BuiltValueField(wireName: 'song_audioFile')
  String get songAudioFile;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SongsRecordBuilder builder) => builder
    ..songSingle = false
    ..songName = ''
    ..songDetails = ''
    ..songImage = ''
    ..songAudioFile = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('songs');

  static Stream<SongsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SongsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SongsRecord._();
  factory SongsRecord([void Function(SongsRecordBuilder) updates]) =
      _$SongsRecord;

  static SongsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSongsRecordData({
  bool songSingle,
  String songName,
  DocumentReference songArtist,
  String songDetails,
  String songImage,
  String songAudioFile,
}) =>
    serializers.toFirestore(
        SongsRecord.serializer,
        SongsRecord((s) => s
          ..songSingle = songSingle
          ..songName = songName
          ..songArtist = songArtist
          ..songDetails = songDetails
          ..songImage = songImage
          ..songAudioFile = songAudioFile));
