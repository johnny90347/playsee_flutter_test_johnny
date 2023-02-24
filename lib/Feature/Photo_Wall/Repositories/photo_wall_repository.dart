import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Models/photoModel.dart';
import 'package:playsee_flutter_test_johnny/Service/http_service.dart';

class PhotoWallRepository {

  // builder: 外部傳入func做Json序列化
  Future<PhotoModel> getPhotoList() => HttpService()
      .getData(url: "test1.0/backstage/exm1", builder: (data) => PhotoModel.fromJson(data), header: {"authorization": "0123456789#0#examId"});
}
