import 'package:flutter/material.dart';
import 'package:boilerplate_getx_flutter/resources/resources.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircularProgressIndicator(
            color: Resources.color.colorPrimary,
          ),
        ),
      ),
    );
  }
}
