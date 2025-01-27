import 'package:flutter/material.dart';

void main() {
  runApp(MatrimonyApp());
}

class MatrimonyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DashboardButton(
              title: 'Add User',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddEditUserScreen()),
              ),
            ),
            DashboardButton(
              title: 'User List',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserListScreen()),
              ),
            ),
            DashboardButton(
              title: 'Favorite User',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteUserScreen()),
              ),
            ),
            DashboardButton(
              title: 'About Us',
              onPressed: () {}, // Add About Us screen navigation here
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  DashboardButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(title),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<Map<String, dynamic>> users = [
    {
      'name': 'PRINCE ZALA',
      'city': 'rAJKOT',
      'email': 'HARSH @example.com',
      'phone': '5365650',
      'dob': '1995-06-15',
      'gender': 'MALE',
      'age': 28,
      'isFavorite': true
    },
    {
      'name': 'HARSH ZALA',
      'city': 'rAJKOT',
      'email': 'HARSH @example.com',
      'phone': '5365650',
      'dob': '1995-06-15',
      'gender': 'MALE',
      'age': 28,
      'isFavorite': true
    },
  ];

  void toggleFavorite(int index) {
    setState(() {
      users[index]['isFavorite'] = !users[index]['isFavorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              title: Text(user['name']),
              subtitle: Text(user['email']),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      user['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                      color: user['isFavorite'] ? Colors.red : null,
                    ),
                    onPressed: () => toggleFavorite(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddEditUserScreen(user: user),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        users.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AddEditUserScreen extends StatefulWidget {
  final Map<String, dynamic>? user;

  AddEditUserScreen({this.user});

  @override
  _AddEditUserScreenState createState() => _AddEditUserScreenState();
}

class _AddEditUserScreenState extends State<AddEditUserScreen> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _cityController;
  late String _gender;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user?['name'] ?? '');
    _emailController = TextEditingController(text: widget.user?['email'] ?? '');
    _phoneController = TextEditingController(text: widget.user?['phone'] ?? '');
    _cityController = TextEditingController(text: widget.user?['city'] ?? '');
    _gender = widget.user?['gender'] ?? 'Male';
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user == null ? 'Add User' : 'Edit User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email Address'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(labelText: 'City'),
            ),
            DropdownButtonFormField<String>(
              value: _gender,
              items: ['Male', 'Female', 'Other']
                  .map((gender) => DropdownMenuItem(
                value: gender,
                child: Text(gender),
              ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _gender = value ?? 'Male';
                });
              },
              decoration: InputDecoration(labelText: 'Gender'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission logic
                Navigator.pop(context);
              },
              child: Text(widget.user == null ? 'Add User' : 'Update User'),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> favoriteUsers = [
      {
        'name': 'HARSH ZALA',
        'city': 'rAJKOT',
        'email': 'HARSH @example.com',
        'phone': '5365650',
        'dob': '1995-06-15',
        'gender': 'MALE',
        'age': 28,
        'isFavorite': true
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Users'),
      ),
      body: ListView.builder(
        itemCount: favoriteUsers.length,
        itemBuilder: (context, index) {
          final user = favoriteUsers[index];
          return Card(
            child: ListTile(
              title: Text(user['name']),
              subtitle: Text(user['email']),
              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}