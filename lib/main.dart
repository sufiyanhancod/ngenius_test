import 'package:flutter/material.dart';
import 'package:ngenius_sdk/ngenius_sdk.dart';
import 'package:ngenius_test/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const CheckoutScreen(),
                ),
              ),
              child: const Text("Initiate Checkout"),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NgeniusCheckout(
      apiUrl: Consts.baseUrl,
      apiKey: Consts.apiKey,
      outletId: Consts.outletId,
      currency: "AED",
      amount: 100,
      onPaymentCreated: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Success'),
          ),
        );
        Navigator.pop(context);
      },
      // logLevel: LogLevel.all,
      // onError: () => print('An error occured'),
    );
  }
}
