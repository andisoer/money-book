import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAction extends StatelessWidget {
  final String title;
  final Widget icon;
  const ItemAction({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: () {}, icon: icon),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
