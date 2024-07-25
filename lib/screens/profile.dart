// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/AuthorTse.jpg'), // Replace with actual image asset or network image
            ),
            TextButton(
              onPressed: () {
                // Add edit profile image action
              },
              child: const Text(
                'Edit profile image',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            ProfileInfoItem(
              label: 'Name',
              value: 'Helena Hills',
              onTap: () {
                // Add action to edit name
              },
            ),
            ProfileInfoItem(
              label: 'Username',
              value: '@helena',
              onTap: () {
                // Add action to edit username
              },
            ),
            ProfileInfoItem(
              label: 'Email',
              value: 'name@domain.com',
              onTap: () {
                // Add action to edit email
              },
            ),
            ProfileInfoItem(
              label: 'Links',
              value: 'website.net\nmylink.net\nyourlink.net',
              onTap: () {
                // Add action to edit links
              },
            ),
            TextButton(
              onPressed: () {
                // Add action to add new link
              },
              child: const Text(
                '+ Add link',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ProfileInfoItem(
              label: 'Bio',
              value: 'A description of this user.',
              onTap: () {
                // Add action to edit bio
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;

  const ProfileInfoItem({
    required this.label,
    required this.value,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                value,
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                maxLines: 3, // Adjust as needed
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
