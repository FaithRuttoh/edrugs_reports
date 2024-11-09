import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ErrorReportForm extends StatefulWidget {
  const ErrorReportForm({super.key}); // Add super.key here for cleaner syntax

  @override
  ErrorReportFormState createState() => ErrorReportFormState();
}

// Keep _ErrorReportFormState private as it's internal to ErrorReportForm

class ErrorReportFormState extends State<ErrorReportForm> {
  final _formKey = GlobalKey<FormState>();

  String errorType = '';
  String description = '';
  String severity = 'Minor';

  // Function to handle the report submission
  Future<void> submitReport() async {
    // Validate form before submitting
    if (_formKey.currentState!.validate()) {
      // Save data to Firebase
      await FirebaseFirestore.instance.collection('error_reports').add({
        'errorType': errorType,
        'description': description,
        'severity': severity,
        'timestamp': Timestamp.now(),
      });

      // Check if the widget is still mounted before showing the Snackbar
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Report submitted successfully")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Report an Error")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Error Type'),
                onChanged: (value) => errorType = value,
                validator: (value) =>
                    value!.isEmpty ? "Enter error type" : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                onChanged: (value) => description = value,
                validator: (value) =>
                    value!.isEmpty ? "Enter description" : null,
              ),
              DropdownButtonFormField<String>(
                value: severity,
                items: ['Minor', 'Moderate', 'Severe']
                    .map((level) =>
                        DropdownMenuItem(value: level, child: Text(level)))
                    .toList(),
                onChanged: (value) => severity = value!,
                decoration:
                    const InputDecoration(labelText: 'Severity Level'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: submitReport,
                child: const Text("Submit Report"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}