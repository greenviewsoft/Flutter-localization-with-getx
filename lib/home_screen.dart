import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> _categories = ["Food", "Electronics", "Groceries", "Dress"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'app_name'.tr,
                style: TextStyle(fontSize: 40),
              ),
              Text(
                'app_title'.tr,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('en', 'US'),
                  );
                },
                child: Text("english"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('bn', 'BD'),
                  );
                },
                child: Text("bangla"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('hi', 'IN'),
                  );
                },
                child: Text("Hindi"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// listView =
