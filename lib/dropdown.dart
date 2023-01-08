import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  // Add constructor arguments for the items and initial value
  const Dropdown({
    Key? key,
    required this.items,
    required this.initialValue,
  }) : super(key: key);

  final List<String> items;
  final String initialValue;

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  // Initial Selected Value
  String? dropdownvalue;

  @override
  void initState() {
    super.initState();
    // Set the initial value to the value passed as an argument
    dropdownvalue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.black),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                // Initial value is the value passed as an argument
                value: dropdownvalue,

                // Down arrow icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // List of items is the list passed as an argument
                items: widget.items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 15,
                      ),
                    ),
                  );
                }).toList(),

                // After selecting the desired option, it will
                // change the button value to the selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
