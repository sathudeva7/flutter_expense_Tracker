import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Add this import statement

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  // Declare a variable to store the selected date
  DateTime? _selectedDate;

  // Use this function to show the date picker and update the selected date
  void _selectDate() async {
     DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration.collapsed(
              hintText: 'Title',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration.collapsed(
              hintText: 'Address',
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // Add a button to select the date
        MaterialButton(
          onPressed: _selectDate,
          child: Text(
            _selectedDate == null
                ? 'Select Date' 
                : DateFormat('yyyy-MM-dd').format(_selectedDate),
          ),
        ),
      ],
    );
  }
}
