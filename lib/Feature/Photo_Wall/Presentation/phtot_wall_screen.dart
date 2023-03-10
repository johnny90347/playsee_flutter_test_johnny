import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Controller/photo_wall_controller.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Presentation/Components/image_cell.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Presentation/Components/loading_indicator.dart';
import 'package:playsee_flutter_test_johnny/Feature/Photo_Wall/Repositories/photo_wall_repository.dart';

class PhotoWallScreen extends StatefulWidget {
  const PhotoWallScreen({Key? key}) : super(key: key);

  @override
  State<PhotoWallScreen> createState() => _PhotoWallScreenState();
}

class _PhotoWallScreenState extends State<PhotoWallScreen> {
  @override
  void initState() {
    // 建立Controller
    Get.put(PhotoWallController(photoWallRepository: PhotoWallRepository()));

    // 從Controller 取得資料
    getPhotoData();
    super.initState();
  }

  void getPhotoData() async {
    final ctr = Get.find<PhotoWallController>();
    ctr.getPhotoData();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GetBuilder<PhotoWallController>(
        builder: (ctr) => Container(
            width: screenSize.width,
            height: screenSize.height,
            child: ctr.photoData.length == 0
                ? LoadingIndicator()
                : GridView.custom(
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      repeatPattern: QuiltedGridRepeatPattern.same,
                      pattern: [
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      childCount: ctr.photoData.length,
                      (context, index) => ImageCell(id: ctr.photoData[index].id),
                    ),
                  )),
      ),
    );
  }
}
