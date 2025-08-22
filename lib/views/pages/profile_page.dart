import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              value: 'e3',
              items: [
                DropdownMenuItem(value: 'e1', child: Text("Element1")),
                DropdownMenuItem(value: 'e2', child: Text("Element2")),
                DropdownMenuItem(value: 'e3', child: Text("Element3")),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text('Click Me'),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                  print(value);
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Enable Notifications'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 100.0,
              divisions: 10, // fix number
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
                print(value);
              },
            ),
            InkWell(
              splashColor: Colors.blue,
              onTap: () {
                setState(() {
                  sliderValue = 50.0;
                });
                print('image selected!');
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white24,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text('Click me'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Click me')),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: Text('Click Me'),
            ),
            TextButton(onPressed: () {}, child: Text('Text Btn')),
            OutlinedButton(onPressed: () {}, child: Text('Outline Btn')),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
