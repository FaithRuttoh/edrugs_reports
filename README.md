# edrugs_reports

Medication Error Reporting Tool

A Flutter-based application designed to enhance medication safety in healthcare settings by allowing healthcare professionals to report medication errors quickly and anonymously. The app includes role-based access, reporting forms, and an admin dashboard with data visualization to identify trends and improve safety practices.

Features
User Authentication: Enables secure access with Firebase Authentication (email/password login).
Error Reporting Form: Allows healthcare staff to submit detailed medication error reports, including error type, description, and severity.
Admin Dashboard: Displays submitted reports with a real-time data stream and basic data filtering for review.
Data Visualization (Future Enhancement): Visualizes trends in reported medication errors to highlight key areas for improvement.

Technologies Used

Frontend: Flutter
Backend: Firebase Firestore (for data storage and real-time updates)
Authentication: Firebase Authentication

Data Visualization: fl_chart library (for future enhancement)

Getting Started
Prerequisites
Flutter SDK
Firebase Account
Firebase project with Firestore and Authentication set up

Installation

Clone the Repository

bash
Copy code
git clone https://github.com/FaithRuttoh/edrug_metrix.git
cd edrug_metrix

Install Dependencies
bash
Copy code
flutter pub get
Configure Firebase

Create a Firebase project at Firebase Console.
Set up Firestore and enable email/password authentication.
Add your google-services.json (Android) and GoogleService-Info.plist (iOS) to the android/app and ios/Runner directories respectively.
Follow the Firebase setup guide for Flutter integration.
Run the App

bash
Copy code
flutter run

Project Structure
bash
Copy code
lib/
├── main.dart                 # Main application file, initializes Firebase
├── authentication_screen.dart # User authentication (login and registration)
├── error_report_form.dart     # Error reporting form for submitting incidents
└── admin_dashboard.dart       # Admin dashboard for viewing submitted reports

Usage
Login: Users authenticate with email and password.

Report an Error:
Users fill out the form, entering details like error type, description, and severity level.
Submitted reports are stored in Firebase Firestore.

Admin Dashboard:
Admins view all submitted reports in real-time, including the ability to filter by error type and severity.

Data visualization (future enhancement) allows for trend analysis.
Code Snippets
Authentication Example
dart
Copy code
final _auth = FirebaseAuth.instance;
await _auth.signInWithEmailAndPassword(email: email, password: password);
Firestore Data Submission

dart
Copy code
FirebaseFirestore.instance.collection('error_reports').add({
  'errorType': errorType,
  'description': description,
  'severity': severity,
  'timestamp': Timestamp.now(),
});
Real-Time Data Retrieval

dart
Copy code
StreamBuilder(
  stream: FirebaseFirestore.instance.collection('error_reports').snapshots(),
  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
    // Handle data retrieval
  },
);

Future Enhancements
Data Visualization: Use fl_chart to create pie and bar charts to analyze trends in medication errors.
Push Notifications: Notify admins about high-severity errors for immediate review.
Role-Based Access Control: Limit certain features to admins to ensure data security.

License
This project is open source and available under the MIT License.

Contact
For any inquiries or suggestions, please contact [fay.ruttoh@gmail.com/+254718747695].
