import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/contact_info_widget.dart';
import '../../widgets/download_resume_widget.dart';
import '../../widgets/social_media_icons_widget.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme
          .of(context)
          .colorScheme
          .background,
      height: MediaQuery
          .of(context)
          .size
          .height / 1.5,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(100),
                  child: const Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: ContactInfo(
                            heading: "Email:",
                            info: "atemiehartkelvin@rocketmail.com",
                          ),
                        ),
                        SizedBox(height: 15),
                        FittedBox(
                          child: ContactInfo(
                            heading: "Mobile Number:",
                            info: "+2349056025603",
                          ),
                        ),
                        SizedBox(height: 15),
                        SocialMediaIconsWidget(),
                        SizedBox(height: 15),
                        DownloadResume()
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 110),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _messageController,
                            decoration: const InputDecoration(
                              labelText: 'Message',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a message';
                              }
                              return null;
                            },
                            maxLines: 4,
                          ),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                sendMessage();
                              }
                            },
                            child: const Text('Send'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void sendMessage() async {
    final name = _nameController.text;
    final email = _emailController.text;
    final message = _messageController.text;

    final String subject = 'Contact form message from $name';
    final String body = 'Name: $name\nEmail: $email\nMessage: $message';

    final url = 'mailto:atemiehartkelvin@gmail.com?subject=${Uri.encodeFull(
        subject)}&body=${Uri.encodeFull(body)}';

    if (await canLaunch(url)) {
      await launch(url);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Email App Opened"),
            content: const Text("Your email app was opened successfully."),
            actions: [
              TextButton(
                child: const Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
