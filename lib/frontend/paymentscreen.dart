import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentMethodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Methods'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Redirect to Lipa Na M-Pesa
             _launchMpesaApp(); ;
          },
          child: Text('Lipa Na M-Pesa'),
        ),
      ),
    );
  }

void _launchMpesaApp() async {
  // Define the deep link URLs for M-Pesa app and toolkit
  const String mpesaAppUrl = 'mpesa://';
  const String mpesaToolkitUrl = 'https://www.safaricom.com/mpesa/';

  // Check if the M-Pesa app is installed
  if (await canLaunch(mpesaAppUrl)) {
    await launch(mpesaAppUrl); // Launch the M-Pesa app
  } else {
    await launch(mpesaToolkitUrl); // Launch the M-Pesa toolkit in a web browser
  }
}
  }

