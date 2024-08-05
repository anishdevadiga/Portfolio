import 'package:anishportfoilio/controller/contact_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';


class ContactWidget extends StatefulWidget {
  final ThemeData themeData;
  final Size size;

  const ContactWidget({super.key, required this.size, required this.themeData});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  final ContactController _contactController = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return SectionContainer(
      width: widget.size.width,
      color: WebColor.primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact Information", style: themedata.textTheme.bodyLarge),
                const SpacerHeightWidget(height: 20),
                Text(
                  "To contact me, please fill out the text fields with your name, email address, and message. Once you have entered your information, click the Send button to submit your message via email.",
                  style: themedata.textTheme.bodySmall,
                ),
                const SpacerHeightWidget(height: 20),
                Row(
                  children: [
                    // First Column with GIF
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          'assets/gif/ContactMe.gif',
                          height: widget.size.height * 0.55,
                          width: widget.size.width * 0.5, // Adjust as needed
                        ),
                      ),
                    ),
                    // Second Column with text fields
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name", style: themedata.textTheme.titleMedium),
                                const SizedBox(height: 10),
                                Obx(() => TextField(
                                  controller: _contactController.nameController,
                                  onChanged: _contactController.onNameChanged,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.amaranth(fontSize: 22),
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color when enabled
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    hintText: 'Enter your Name',
                                    hintStyle: GoogleFonts.amaranth(
                                        fontSize: 18, color: Colors.white70),
                                    errorText: _contactController.nameValidationError.value.isEmpty ? null : _contactController.emailValidationError.value,
                                  ),
                                )),
                              ],
                            ),
                            const SpacerHeightWidget(height: 20),
                            // Email
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email", style: themedata.textTheme.titleMedium),
                                const SizedBox(height: 10),
                                Obx(() => TextField(
                                  controller: _contactController.emailController,
                                  onChanged: _contactController.onEmailChanged,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.amaranth(fontSize: 22),
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color when enabled
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    hintText: 'Enter your Email',
                                    hintStyle: GoogleFonts.amaranth(
                                        fontSize: 18, color: Colors.white70),
                                    errorText: _contactController.emailValidationError.value.isEmpty ? null : _contactController.emailValidationError.value,
                                  ),
                                )),
                              ],
                            ),
                            const SpacerHeightWidget(height: 20),
                            // Message
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Message", style: themedata.textTheme.titleMedium),
                                const SizedBox(height: 10),
                                Obx(() => TextField(
                                  controller: _contactController.messageController,
                                  onChanged: _contactController.onMessageChanged,
                                  textAlign: TextAlign.start,
                                  maxLines: 5,
                                  style: GoogleFonts.amaranth(fontSize: 22),
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white, // Border color for enabled state
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    hintText: 'Enter the message',
                                    hintStyle: GoogleFonts.amaranth(
                                        fontSize: 18, color: Colors.white70),
                                    errorText: _contactController.messageValidationError.value.isEmpty ? null : _contactController.messageValidationError.value,
                                  ),
                                )),
                              ],
                            ),
                            const SpacerHeightWidget(height: 20),
                            Center(
                              child: SizedBox(
                                width: widget.size.width * 0.25,
                                height: widget.size.width * 0.03,
                                child: ElevatedButton(
                                  onPressed: _contactController.sendMessage,
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: WebColor.btnColor, // Button text color
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text('Send', style: themedata.textTheme.titleMedium),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
