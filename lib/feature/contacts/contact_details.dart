import 'package:flutter/material.dart';
import 'package:my_buddies/Features/contacts/widgets/contact_row.dart';
import 'package:my_buddies/core/constants/app_images.dart';

import '../../core/constants/app_strings.dart';

class ContactDetails extends StatefulWidget {
  ContactDetails({required this.index, super.key});

  int index;

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.myFriends[widget.index]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(1000.0),
                child: Image.asset(
                  AppImages.maleprofile,
                  height: 200,
                  width: 200,
                )),

            SizedBox(
              height: 8.0,
            ),

            /// Name
            ContactRow(
                labelName: "Name", labelValue: AppStrings.myFriends[widget.index]),
            SizedBox(
              height: 16.0,
            ),

            /// Address
            Row(
              children: [
                Expanded(
                  child: const Text(
                    'Address :',
                    // textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Expanded(
                  child: const Text(
                    'Mahendranagar',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),

            Row(
              children: [
                Expanded(
                  child: const Text(
                    'DOB :',
                    // textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Expanded(
                  child: const Text(
                    '10/2',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 16.0,
            ),

            Row(
              children: [
                Expanded(
                  child: const Text(
                    'DOB :',
                    // textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Expanded(
                  child: const Text(
                    '9868710362',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}