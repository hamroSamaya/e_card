import 'package:flutter/material.dart';
import 'package:my_buddies/Features/contacts/contact_details.dart';
import 'package:my_buddies/core/constants/app_methods.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_strings.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('MY FRIENDS LIST😂👍'),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: AppStrings.myFriends.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactDetails(index: index)));
                },
                child: friendName(
                    AppStrings.myFriends[index],
                    AppStrings.myFriendsEmail[index],
                    AppStrings.myFriendsAddress[index],
                    AppStrings.myFriendsNum[index]),
              );
            }));
  }



  Widget friendName(
      String name,
      String email,
      String address,
      String number,
      ) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 24),
                    ),
                    IconButton(
                        onPressed: () {
                          AppMethods.launchCaller(actionMsg:'tel:$number');
                          print("Call button clicked");
                        },
                        icon: Icon(Icons.call))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      address,
                      style: TextStyle(fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          AppMethods.launchCaller(actionMsg: 'mailto:$email');
                          print("Email button clicked");
                        },
                        icon: Icon(Icons.email_outlined))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}