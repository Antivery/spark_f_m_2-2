import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'artist_record.g.dart';

abstract class ArtistRecord
    implements Built<ArtistRecord, ArtistRecordBuilder> {
  static Serializer<ArtistRecord> get serializer => _$artistRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'artist_name')
  String get artistName;

  @nullable
  @BuiltValueField(wireName: 'artist_bio')
  String get artistBio;

  @nullable
  @BuiltValueField(wireName: 'artist_image')
  String get artistImage;

  @nullable
  @BuiltValueField(wireName: 'artist_albums')
  BuiltList<DocumentReference> get artistAlbums;

  @nullable
  @BuiltValueField(wireName: 'artist_songs')
  BuiltList<DocumentReference> get artistSongs;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ArtistRecordBuilder builder) => builder
    ..artistName = ''
    ..artistBio = ''
    ..artistImage = ''
    ..artistAlbums = ListBuilder()
    ..artistSongs = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Artist');

  static Stream<ArtistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ArtistRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ArtistRecord._();
  factory ArtistRecord([void Function(ArtistRecordBuilder) updates]) =
      _$ArtistRecord;

  static ArtistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createArtistRecordData({
  String artistName,
  String artistBio,
  String artistImage,
}) =>
    serializers.toFirestore(
        ArtistRecord.serializer,
        ArtistRecord((a) => a
          ..artistName = artistName
          ..artistBio = artistBio
          ..artistImage = artistImage
          ..artistAlbums = null
          ..artistSongs = null));
