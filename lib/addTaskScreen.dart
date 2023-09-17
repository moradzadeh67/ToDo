import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _title = '';
  late String _priority;
  DateTime _date = DateTime.now();
  TextEditingController _dateContoller = TextEditingController();
  final DateFormat _dateFormatter = DateFormat('MMM dd, yyy');
  final List<String> _priorities = ['Low', 'Medium', 'High'];

  _handelDatePicker() async{
    final DateTime? date = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2000), lastDate: DateTime(2100));
    if (date != null && date != _date){
      setState(() {
        _date = date;
      });
      _dateContoller.text = _dateFormatter.format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Theme.of(context).primaryColor,

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
