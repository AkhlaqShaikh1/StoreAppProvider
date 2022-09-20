import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application_provider/providers/store_controller.dart';
import 'package:store_application_provider/screens/change_name_screen.dart';
import 'package:store_application_provider/screens/store_status_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = context.watch<StoreController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(prov.storeName),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                    ),
                    child: Text(
                      prov.storeName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      "Follower Count:\t\t\t\t\t\t ${prov.followerCount}",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      prov.storeStatus
                          ? "Store Status:\t\t\t\t\t\tOpen"
                          : "Store Status:\t\t\t\t\t\tClosed",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, ChangeScreen.id),
                child: const Text("Change Store Name"),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, StoreStatusPage.id),
                child: const Text("Change Store Status"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => prov.incrementFollowers()),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
