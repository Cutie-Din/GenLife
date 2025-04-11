import 'package:genlife_mobi/src/shared/app_export.dart';

class HomeServiceApi extends BaseRemoteSource implements HomeRepository {
  final HomeService service;
  HomeServiceApi({required this.service});

  @override
  Future<BaseResponse> getTopCate() {
    final response = callApiWithErrorParser(service.getTopCate()).then((httpResponse) {
      return httpResponse.data;
    });
    return response;
  }
}
