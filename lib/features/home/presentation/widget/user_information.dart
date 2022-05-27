import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat datang,',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.5,
                  fontSize: 14,
                ),
              ),
              Text(
                'Andi Surya',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          CircleAvatar(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
