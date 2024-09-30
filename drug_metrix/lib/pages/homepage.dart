import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // Creating the Homepage for the APP.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Overall description of the app structure
      appBar: AppBar(
        // AppBar at the top with a title 'Homepage'.
        title: const Text('Homepage'),
        backgroundColor:
            Colors.green, // Setting AppBar background color to green.
      ),

      // The body contains a GridView that shows dashboard items in a grid layout.
      body: GridView.count(
        crossAxisCount: 5, // Display one items per row.
        padding:
            const EdgeInsets.all(5.0), // Add padding around the grid items.

        // The children property holds the dashboard items.
          
        children: <Widget>[
          // Build a homepage item for 'Create new report' with an icon and label.
          _buildDashboardItem( context, Icons.report, 'RAISE AN INCIDENT', '/myincident'),
          _buildDashboardItem( context, Icons.health_and_safety, 'INTERVENTION', '/precaution'),
          
        

          // More items to be added later.
        ],
      ),
    );
  }

  // A helper function that builds individual homepage items.
  // Takes the context, icon, label, and route for navigation.
  Widget _buildDashboardItem(
      BuildContext context, IconData icon, String label, String route) {
    // GestureDetector allows detecting taps on the card.
    return GestureDetector(
      // When tapped, navigate to the specified route.
      onTap: () => Navigator.pushNamed(context,
          '/myincident'), // Navigates to a specific page based on the route.

      // The card visually represents the homepage item with an icon and label.
      child: Card(
        elevation: 2, // Adds a shadow effect to the card to give it some depth.
        margin: const EdgeInsets.all(8.0), // Adds margin around each card.

        // The Column widget arranges the icon and text vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center both the icon and label in the card.

          // Children widgets inside the column.
          children: <Widget>[
            // Icon widget to display an icon for the hoempage item.
            Icon(icon,
                size: 50,
                color: Colors
                    .green), // The icon is displayed in green color and sized at 50.

            // SizedBox adds vertical spacing between the icon and the label.
            const SizedBox(height: 5),

            // Text widget to display the label (e.g., 'New report', 'Custom make report').
            Text(label,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium), // Displays the label with the app's text style.
          ],
        ),
      ),
    );
  }
}
