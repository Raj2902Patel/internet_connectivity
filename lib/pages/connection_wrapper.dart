import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:internet_connectivity/pages/connected_page.dart';
import 'package:internet_connectivity/pages/disconnected_page.dart';

class ConnectionWrapper extends StatefulWidget {
  const ConnectionWrapper({super.key});

  @override
  State<ConnectionWrapper> createState() => _ConnectionWrapperState();
}

class _ConnectionWrapperState extends State<ConnectionWrapper> {
  bool? isConnectedToInternet;

  @override
  void initState() {
    super.initState();
    _checkInitialConnection();
    _listenToConnectionChanges();
  }

  void _listenToConnectionChanges() {
    InternetConnection().onStatusChange.listen((event) {
      bool status = event == InternetStatus.connected;
      if (status != isConnectedToInternet) {
        setState(() {
          isConnectedToInternet = status;
        });
      }
    });
  }

  Future<void> _checkInitialConnection() async {
    bool status = await InternetConnection().hasInternetAccess;
    setState(() {
      isConnectedToInternet = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isConnectedToInternet == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        ),
      );
    } else if (isConnectedToInternet!) {
      return const ConnectedPage();
    } else {
      return const DisConnectedPage();
    }
  }
}
