import 'package:blood_bank/widgets/palette.dart';
import 'package:flutter/material.dart';

class ProfileScree extends StatefulWidget {
  const ProfileScree({super.key});

  @override
  State<ProfileScree> createState() => _ProfileScreeState();
}

class _ProfileScreeState extends State<ProfileScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primaryRed,
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
          'Profile',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Palette.primaryRed, shape: BoxShape.circle),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/main.jpg'),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ProfileItem(
              icon: Icon(
                Icons.person,
                color: Palette.primaryRed,
              ),
              value: 'Sadia Sultana Pinky',
            ),
            ProfileItem(
                icon: Icon(
                  Icons.email,
                  color: Palette.primaryRed,
                ),
                value: 'abcd@gmail.com'),
            ProfileItem(
                icon: Icon(
                  Icons.bloodtype,
                  color: Palette.primaryRed,
                ),
                value: 'AB+'),
            ProfileItem(
                icon: Icon(
                  Icons.phone,
                  color: Palette.primaryRed,
                ),
                value: '+8801234567789'),
            ProfileItem(
                icon: Icon(
                  Icons.gps_fixed,
                  color: Palette.primaryRed,
                ),
                value: 'Bandarban University'),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String value;
  final Icon icon;
  const ProfileItem({
    super.key,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    value,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
