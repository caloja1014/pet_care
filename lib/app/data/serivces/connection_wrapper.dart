import 'package:get/get_connect.dart';
import 'package:pet_care/config/config.dart' as config;

class ConnectionWrapper extends GetConnect {
  // ignore: non_constant_identifier_names, constant_identifier_names
  static final ROOT_URL = config.ENV['API']['ROOT_PATH'];
  @override
  Future<Response<T>> patch<T>(String url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    // ignore: unnecessary_brace_in_string_interps
    return super.patch(
      "${ROOT_URL}${url}",
      body,
      contentType: contentType,
      headers: headers,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }

  @override
  Future<Response<T>> post<T>(String? url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    print("prueba");
    print("${ROOT_URL}${url}");
    return super.post(
      "${ROOT_URL}${url}",
      body,
      contentType: contentType,
      headers: headers,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }

  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query,
      Decoder<T>? decoder}) {
    return super.get(
      "${ROOT_URL}${url}",
      contentType: contentType,
      headers: headers,
      query: query,
      decoder: decoder,
    );
  }

  @override
  Future<Response<T>> put<T>(String url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    // TODO: implement put
    return super.put(
      "${ROOT_URL}${url}",
      body,
      contentType: contentType,
      headers: headers,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }
}
