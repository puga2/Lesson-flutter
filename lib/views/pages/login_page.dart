import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

TextEditingController controller = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
              onEditingComplete: () => setState(() {}),
            ),
          ],
        ),
      ),
    );
  }
}
