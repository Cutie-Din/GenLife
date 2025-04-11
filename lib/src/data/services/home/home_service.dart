import 'package:genlife_mobi/src/shared/app_export.dart';
part 'home_service.g.dart';

@RestApi()
abstract class HomeService {
  factory HomeService(Dio dio, {String? baseUrl}) = _HomeService;
  @GET('top-categories')
  Future<HttpResponse<BaseResponse>> getTopCate();
}
