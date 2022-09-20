import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application_provider/providers/store_controller.dart';

class StoreStatusPage extends StatelessWidget {
  const StoreStatusPage({Key? key}) : super(key: key);
  static String id = "/status";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Store Status"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Store Status"),
          Center(
            child: Consumer<StoreController>(
              builder: (context, pr, child) => Switch(
                value: pr.storeStatus,
                onChanged: (value) => pr.updateStoreStatus(value),
                activeColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
