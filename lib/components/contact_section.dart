import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constant/theme.dart';
import 'dart:html';

class ContactSection extends StatefulWidget {
  const ContactSection({
    super.key,
  });

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              'Contact',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 3.h),
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Text(
            'If you have any questions about my work or simply want to say hello, feel free to reach out. I\'m always open to chat.',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                height: 1.5,
                letterSpacing: 0.4),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        // FormSection(formKey: _formKey),
        const Column(
          children: [
            Row(
              children: [
                SocialButton(
                  assetName: 'assets/svg/twitter.svg',
                  url: 'https://twitter.com/karlihasann',
                ),
                SizedBox(
                  width: 20,
                ),
                SocialButton(
                  assetName: 'assets/svg/github.svg',
                  url: 'https://github.com/hasankarli',
                ),
                SizedBox(
                  width: 20,
                ),
                SocialButton(
                  assetName: 'assets/svg/linkedin.svg',
                  url: 'https://www.linkedin.com/in/hasan-karli/',
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    assetName: 'assets/svg/gmail.svg',
                    url: '',
                    mail: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SocialButton(
                      assetName: 'assets/svg/medium.svg',
                      url: 'https://medium.com/@hasankarli')
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.assetName,
    required this.url,
    this.mail = false,
  });

  final String assetName;
  final String url;
  final bool mail;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            mail
                ? await launchUrl(
                    Uri(scheme: 'mailto', path: 'karlihasann@gmail.com'))
                : window.open(url, 'new tab');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
              color: AppTheme.socialButtonBgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              assetName,
            ),
          ),
        ),
      ),
    );
  }
}

class FormSection extends StatelessWidget {
  const FormSection({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: const Column(
            children: [
              ContactField(
                hintText: 'NAME',
              ),
              ContactField(
                hintText: 'EMAIL',
              ),
              ContactField(
                hintText: 'MESSAGE',
                maxLines: 5,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Message sent!'),
                ),
              );
            }
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SEND MESSAGE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ContactField extends StatelessWidget {
  const ContactField({
    super.key,
    required this.hintText,
    this.maxLines,
  });

  final String hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      color: AppTheme.backgroundColor5,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        cursorColor: Colors.white,
        maxLines: maxLines,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          focusColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
