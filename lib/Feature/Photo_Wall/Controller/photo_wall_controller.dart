import 'package:get/get.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Models/photoModel.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Repositories/photo_wall_repository.dart';

class PhotoWallController extends GetxController{

  late PhotoWallRepository _photoWallRepository;

  PhotoWallController({required PhotoWallRepository photoWallRepository}){
    this._photoWallRepository = photoWallRepository;
  }

  // 取回的Photo資料
  List<PhotoData> photoData = [];


  // 取的Photo資料
 void getPhotoData()async{
   final result =  await _photoWallRepository.getPhotoList();
   photoData = result.p;
   update();
  }
}