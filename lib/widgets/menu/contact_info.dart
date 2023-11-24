import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Mina Al-Nasr',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'EGYPT',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'Yomnaa@website.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+43 123 456 789',
        ),
        buildContactInfo(
          title: 'Website',
          text: 'Yomnaa@website.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            // ignore: unnecessary_string_interpolations
            '$title',
            style: const TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
