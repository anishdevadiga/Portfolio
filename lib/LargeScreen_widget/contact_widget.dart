import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWidget extends StatelessWidget {
  final ThemeData themeData;
  final Size size;
  const ContactWidget({super.key, required this.size, required this.themeData});

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return SectionContainer(
      width: size.width,
      color: WebColor.primaryColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact Information", style: themedata.textTheme.bodyLarge),
                const SpacerHeightWidget(height: 20),
                Text("To contact me , please fill out the text fields with your name, email address, and message. Once you have entered your information, click the  Send button to submit your message via email.",style:themedata.textTheme.bodySmall),
                const SpacerHeightWidget(height: 20),
                Row(
                  children: [
                    // First Column with GIF
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          'assets/gif/ContactMe.gif',
                          height: size.height*0.55,
                          width: size.width * 0.5, // Adjust as needed
                        ),
                      ),
                    ),
                    // Second Column with text fields
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: themedata.textTheme.titleMedium),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.white, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when enabled
                                    width: 2.0, // Border width
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                                hintText: 'Enter your name',
                                hintStyle: TextStyle(
                                  color: Colors.white70, // Hint text color
                                ),
                              ),
                            ),
                          ),
                          const SpacerHeightWidget(height: 20),
                          Text("Email", style: themedata.textTheme.titleMedium),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.white, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when enabled
                                    width: 2.0, // Border width
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(
                                  color: Colors.white70, // Hint text color
                                ),
                              ),
                            ),
                          ),
                          const SpacerHeightWidget(height: 20),
                          Text("Message",
                              style: themedata.textTheme.titleMedium),
                          const SizedBox(
                            height: 10,
                          ),
                          const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    color: Colors.white, // Border color
                                    width: 2.0, // Border width
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when enabled
                                    width: 2.0, // Border width
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                                hintText: 'Enter the message',
                                hintStyle: TextStyle(
                                  color: Colors.white70, // Hint text color
                                ),
                              ),
                            ),
                          ),
                          const SpacerHeightWidget(height: 20),
                          Center(
                            child: SizedBox(
                              width: size.width*0.25,
                              height: size.width*0.03,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Your send button logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      WebColor.btnColor, // Button text color
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20),
                                  ),
                                ),
                                child:  Text('Send',style:themedata.textTheme.titleMedium),
                              ),
                            ),
                          ),
                        ],
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
