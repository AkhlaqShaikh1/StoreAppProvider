import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application_provider/providers/store_controller.dart';

class ChangeScreen extends StatelessWidget {
  const ChangeScreen({Key? key}) : super(key: key);
  static String id = "/change";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Store Name"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: context.watch<StoreController>().name,
            onSubmitted: (value) =>
                context.read<StoreController>().updateName(value),
            textCapitalization: TextCapitalization.sentences,
          ),
        ],
      ),
    );
  }
}
