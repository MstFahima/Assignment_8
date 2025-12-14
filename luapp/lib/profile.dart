import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required String username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 60, bottom: 60),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo.shade700, Colors.indigo.shade400],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/logo.png"),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Mst Fahima Begum",
                    style: GoogleFonts.lobster(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Full-Stack Developer",
                    style: GoogleFonts.lobster(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: GoogleFonts.lobster(
                      fontSize: 22,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.indigo.shade200),
                    ),
                    child: Text(
                      "I'm a dedicated Full-Stack Developer experienced in creating robust digital solutions using JavaScript, HTML, CSS, Java, Python, C, and C++.",
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills",
                    style: GoogleFonts.lobster(
                      fontSize: 22,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 15,
                    children: [
                      skillChip("Data Structures"),
                      skillChip("HTML"),
                      skillChip("CSS"),
                      skillChip("Java"),
                      skillChip("Python"),
                      skillChip("C"),
                      skillChip("C++"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget skillChip(String text) {
    return Chip(
      label: Text(text, style: GoogleFonts.lobster(fontSize: 14)),
      backgroundColor: Colors.indigo.shade50,
      shape: StadiumBorder(side: BorderSide(color: Colors.indigo.shade300)),
    );
  }
}
