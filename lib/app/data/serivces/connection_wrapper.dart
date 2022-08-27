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
    // TODO: implement patch
    // ignore: unnecessary_brace_in_string_interps
    return super.patch("${ROOT_URL}${url}", body, contentType, headers, query,
        decoder, uploadProgress);
  }

  @override
  Future<Response<T>> post<T>(String? url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    // TODO: implement post
    return super.post("${ROOT_URL}${url}", body, contentType, headers, query,
        decoder, uploadProgress);
  }

  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query,
      Decoder<T>? decoder}) {
    // TODO: implement get
    return super.get("${ROOT_URL}${url}", headers, contentType, query, decoder);
  }

  @override
  Future<Response<T>> put<T>(String url, body,
      {String? contentType,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Decoder<T>? decoder,
      Progress? uploadProgress}) {
    // TODO: implement put
    return super.put("${ROOT_URL}${url}", body, contentType, headers, query,
        decoder, uploadProgress);
  }
}
