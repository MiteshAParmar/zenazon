import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SizeSelectorView extends GetView {
  const SizeSelectorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeSelectorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SizeSelectorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
