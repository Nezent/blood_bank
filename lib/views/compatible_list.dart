import 'package:blood_bank/widgets/palette.dart';
import 'package:flutter/material.dart';

class CompatibleList extends StatelessWidget {
  const CompatibleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryRed,
      appBar: AppBar(
        backgroundColor: Palette.primaryRed,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Compatibility Chart",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder
                        .all(), // Allows to add a border decoration around your table
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Blood Group'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Accept From'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('Donate To'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'A+',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('A+ A- O+ O-'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('A+ AB+'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('A-'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('A-  O-'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('A+ A- AB+ AB-'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('B+'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('AB- B+ B- AB+'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('B- O-'),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('B-'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('B- O-'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text('AB- B+ B- AB+'),
                        ),
                      ]),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
