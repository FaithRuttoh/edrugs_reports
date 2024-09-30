import 'package:flutter/material.dart';

class MyIncidentPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final TextEditingController selectFormController = TextEditingController();
  final TextEditingController yourNameController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController dateOfIncidentController =
      TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController reportToController = TextEditingController();
  final TextEditingController emailOfRecipientController =
      TextEditingController();
  final TextEditingController witnessesByController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController briefStatementController =
      TextEditingController();
  final TextEditingController medicalIntervantionController =
      TextEditingController();
  final TextEditingController statusController = TextEditingController();

  final List<String> natureOfHarm = [
    'NO HARM',
    'MODERATE HARM',
    'SEVERE HARM',
    'FATAL HARM',
    'UNCERTAIN'
  ];
  String? selectedType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Report Medication Error'),
          backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButton<String>(
  items: natureOfHarm.map<DropdownMenuItem<String>>((String type) {
    return DropdownMenuItem<String>(
      value: type,
      child: Text(type),
    );
  }).toList(),
  onChanged: (String? newValue) {
    // handle value change here

                    
                  
              }
            ),
          ],
        ),
      ),
    );
  }
}
