import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class TwitchTockenValidationCall {
  static Future<ApiCallResponse> call({
    String clientId = 'yjdulm4mbkq6cn4h6tdnavhw0y10i7',
    String clientSecret = '0jhdr85ckbg9no1pk6nuh5dbv6is79',
    String grantType = 'client_credentials',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'twitch tocken validation',
      apiUrl: 'https://id.twitch.tv/oauth2/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'OAuth dl5vuoje2udtygx781emkxx4vbinlr',
      },
      params: {
        'client_id': clientId,
        'client_secret': clientSecret,
        'grant_type': grantType,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }

  static dynamic appAccessToken(dynamic response) => getJsonField(
        response,
        r'''$.app.acces.token''',
      );
}

class SparkFMTWitchRadioClipsCall {
  static Future<ApiCallResponse> call({
    String userId = '697915438',
    String broadcasterId = '697915438',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sparkFMTWitchRadioClips',
      apiUrl: 'https://api.twitch.tv/helix/clips',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 6jm1fvt0db1grx94yr37jygxpdr3oq',
        'Client-Id': 'yjdulm4mbkq6cn4h6tdnavhw0y10i7',
      },
      params: {
        'user_id': userId,
        'broadcaster_id': broadcasterId,
      },
      returnBody: true,
    );
  }

  static dynamic sparkFMClips(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic streamThumbnail(dynamic response) => getJsonField(
        response,
        r'''$.data..thumbnail_url''',
      );
}

class SparkFMYoutubeCall {
  static Future<ApiCallResponse> call({
    String part = 'snippet',
    String q = 'spark fm online',
    String key = 'AIzaSyDz9BDIDT-OOa3BTeYT48abIt8f79K0boc',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sparkFMYoutube',
      apiUrl: 'https://www.googleapis.com/youtube/v3/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'part': part,
        'q': q,
        'key': key,
      },
      returnBody: true,
    );
  }

  static dynamic sparkFMvideoID(dynamic response) => getJsonField(
        response,
        r'''$.items[1].id.videoId''',
      );
}

class SparkFMYoutubeCopyCall {
  static Future<ApiCallResponse> call({
    String part = 'snippet',
    String key = 'AIzaSyDz9BDIDT-OOa3BTeYT48abIt8f79K0boc',
    String id = 'UCNl4sGFRfuS4DRPhHt1gQCw',
    String onBehalfOfContentOwner = 'SparkFMOnline',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sparkFMYoutube Copy',
      apiUrl: 'https://www.googleapis.com/youtube/v3/channels',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'part': part,
        'key': key,
        'id': id,
        'onBehalfOfContentOwner': onBehalfOfContentOwner,
      },
      returnBody: true,
    );
  }

  static dynamic sparkFMvideoID(dynamic response) => getJsonField(
        response,
        r'''$.items[1].id.videoId''',
      );
}
