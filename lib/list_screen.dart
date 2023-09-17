import 'package:flutter/material.dart';
import 'package:flutter_get/controller/fav_controller.dart';
import 'package:flutter_get/models/days_model.dart';
import 'package:get/get.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final FavController _favController = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    print('buil bna ?');
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: _favController.daysList.length,
          itemBuilder: (BuildContext context, int index) {
            Days days = _favController.daysList[index];
            return Card(
              child: ListTile(
                onTap: () {
                  if (days.isFav == true) {
                    _favController.getListData();
                  } else {
                    _favController.getListData(index);
                  }
                },
                title: Text(days.dayName!),
                trailing: Icon(
                  Icons.favorite,
                  color: days.isFav == false ? Colors.white : Colors.red,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
