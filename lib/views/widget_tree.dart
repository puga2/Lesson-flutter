import 'package:flutter/material.dart';
import 'package:flutter_application_1/navbar_widgete.dart';
import 'package:flutter_application_1/views/pages/home.page.dart';
import 'package:flutter_application_1/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Mapp'), centerTitle: true),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
