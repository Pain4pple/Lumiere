// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element_parameter

part of 'tmdb_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _TmdbApiService implements TmdbApiService {
  _TmdbApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.themoviedb.org/3';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<MovieListModel>> getNowPlayingMovies({String? apiKey, String language = language, int page = page}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'language': language, r'page': page};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/now_playing', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<List<VideoModel>>> getMovieVideos(int movieId, String? apiKey) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<List<VideoModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/${movieId}/videos', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<VideoModel> _value;
    try {
      _value = _result.data!.map((dynamic i) => VideoModel.fromJson(i as Map<String, dynamic>)).toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getPopularMovies({String? apiKey, String language = language, int page = page}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'language': language, r'page': page};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/popular', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getTopRatedMovies({String? apiKey, String language = language, int page = page}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'language': language, r'page': page};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/top_rated', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getUpcomingMovies({String? apiKey, String language = language, int page = page}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'language': language, r'page': page};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/upcoming', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getClassicMovies(String? apiKey, String sortBy, String releaseDate) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'sort_by': sortBy, r'primary_release_date.lte': releaseDate};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/discover/movie', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getFilipinoMovies(String? apiKey, String sortBy, String language) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey, r'sort_by': sortBy, r'with_original_language': language};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/discover/movie', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieListModel>> getBestPictures(String? apiKey) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/list/28', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieListModel _value;
    try {
      _value = MovieListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MovieDetailsModel>> getMovieDetails(int movieId, String apiKey) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_key': apiKey};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MovieDetailsModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(_dio.options, '/movie/${movieId}', queryParameters: queryParameters, data: _data)
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MovieDetailsModel _value;
    try {
      _value = MovieDetailsModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic && !(requestOptions.responseType == ResponseType.bytes || requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
