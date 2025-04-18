import 'package:genlife_mobi/src/shared/app_export.dart';

abstract class BaseRemoteSource {
  Future<HttpResponse<T>> callApiWithErrorParser<T>(Future<HttpResponse<T>> api) async {
    try {
      final HttpResponse<T> response = await api;
      return response;
    } on DioException catch (dioError) {
      final Exception exception = handleDioError(dioError);
      throw exception;
    } catch (error) {
      if (error is BaseException) {
        rethrow;
      }
      throw handleError('$error');
    }
  }
}
