import 'package:flutter/material.dart';
import 'package:flutter_get/controller/textfield_controller.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  TextEditingController nameController = TextEditingController();

  final TextController _textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: nameController,
            ),
            const SizedBox(
              height: 25,
            ),
            Obx(
              () => Text(_textController.text.value),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _textController.textTitle(nameController.text);
        },
      ),
    );
  }
}
