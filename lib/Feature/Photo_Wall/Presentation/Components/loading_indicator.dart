import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadingIconSize = MediaQuery.of(context).size.width * 0.10;

    return Center(
      child: Container(
        width: loadingIconSize,
        height: loadingIconSize,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
      ),
    );
  }
}
