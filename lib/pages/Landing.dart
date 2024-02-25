import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Welcome to OrganizeHub'),),
      ),
      drawer: SizedBox(
  height: MediaQuery.of(context).size.height, // Set the height of the drawer to match the screen height
  child: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.amber, // Customize drawer header background color
          ),
          child: Text('User Profile'), // Placeholder for user profile info
        ),
        ListTile(
          leading: const Icon(Icons.person), // Add icon for Profile
          title: const Text('Profile'),
          onTap: () {
            // Handle profile button tap
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings), // Add icon for Settings
          title: const Text('Settings'),
          onTap: () {
            // Handle settings button tap
          },
        ),
        ListTile(
          leading: const Icon(Icons.calendar_today), // Move calendar icon to the drawer
          title: const Text('Calendar'),
          onTap: () {
            // Handle calendar button tap
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout), // Add icon for Logout
          title: const Text('Logout'),
          onTap: () {
            // Handle logout button tap
          },
        ),
      ],
    ),
  ),
),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text for Weather
              ElevatedText(text: 'Weather Section'),
              SizedBox(height: 16),
              // Weather Card
              Card(
                elevation: 4,
                color: Colors.lightBlue, // Customize card background color
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today\'s Weather', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text('Temperature: 25°C'),
                      Text('Condition: Sunny'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Text for Quotes
              ElevatedText(text: 'Quotes Section'),
              SizedBox(height: 16),
              // Quotes Card
              Card(
                elevation: 4,
                color: Colors.orange, // Customize card background color
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Quotes Data'), // Dummy data for quotes
                ),
              ),
              SizedBox(height: 16),
              // Text for Latest Announcements
              ElevatedText(text: 'Latest Announcements Section'),
              SizedBox(height: 16),
              // Latest Announcements Card
              Card(
                elevation: 4,
                color: Colors.green, // Customize card background color
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Announcements Data'), // Dummy data for announcements
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Add icon for Home
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: 'Announcements',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          // Add animation effect when tapping the Home button
          if (index == 0) {
            // Implement animation here (e.g., shaking animation)
          }
        },
      ),
    );
  }
}

class ElevatedText extends StatelessWidget {
  final String text;

  const ElevatedText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: null,
        child: Text(text),
      ),
    );
  }
}
