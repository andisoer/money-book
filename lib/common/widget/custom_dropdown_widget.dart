import 'package:flutter/material.dart';
import 'package:money_book/common/config/themes.dart';

class CustomDropdownWidget extends StatefulWidget {
  List<String> dropdownList;
  ValueChanged<String> onChanged;
  String selectedItem;
  String label;

  CustomDropdownWidget({
    required this.dropdownList,
    required this.onChanged,
    required this.selectedItem,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdownWidget> createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTheme.textStyle.f14TextPrimaryW600,
        ),
        DropdownButton<String>(
          itemHeight: null,
          underline: Container(
            padding: const EdgeInsets.only(top: 8),
            height: 2,
            color: AppTheme.colors.grey.withOpacity(0.6),
          ),
          value: widget.selectedItem,
          items: widget.dropdownList.map((value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              widget.selectedItem = value!;
            });
          },
          isExpanded: true,
        ),
      ],
    );
  }
}
