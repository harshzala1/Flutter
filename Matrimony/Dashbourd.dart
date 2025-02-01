import 'package:flutter/material.dart';


List<User> userList = [
  User(
    name: "Harsh zala",
    address: "123 Main St",
    email: "Harshzala23@example.com",
    mobile: "1234567890",
    city: "Rajkot",
    gender: "Male",
    dob: DateTime(1990, 5, 15),
    hobbies: ["Reading", "Music"],
    isLiked: true,
  ),
  User(
    name: "Nilesh Zala",
    address: "123 Main St",
    email: "Nileshzala23@example.com",
    mobile: "1244457890",
    city: "Rajkot",
    gender: "Male",
    dob: DateTime(1990, 5, 15),
    hobbies: ["Reading", "Music"],
    isLiked: true,
  ),
  User(
    name: "Neww Nameee",
    address: "123 Main St",
    email: "Newwnamee3@example.com",
    mobile: "1234567890",
    city: "Rajkot",
    gender: "Male",
    dob: DateTime(1990, 5, 15),
    hobbies: ["Reading", "Music"],
    isLiked: true,
  ),
];


void main() {
  runApp(MyApp());
}
class AddUserScreen extends StatefulWidget {
  final User? userToEdit;

  AddUserScreen({this.userToEdit});

  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedCity = "Rajkot";
  String? _selectedGender;
  DateTime? _selectedDate;
  bool _reading = false;
  bool _music = false;
  bool _timePass = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.userToEdit != null) {
      nameController.text = widget.userToEdit!.name;
      addressController.text = widget.userToEdit!.address;
      emailController.text = widget.userToEdit!.email;
      mobileController.text = widget.userToEdit!.mobile;
      _selectedCity = widget.userToEdit!.city;
      _selectedGender = widget.userToEdit!.gender;
      _selectedDate = widget.userToEdit!.dob;
      _reading = widget.userToEdit!.hobbies.contains("Reading");
      _music = widget.userToEdit!.hobbies.contains("Music");
      _timePass = widget.userToEdit!.hobbies.contains("Time Pass");
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _resetForm() {
    setState(() {
      nameController.clear();
      addressController.clear();
      emailController.clear();
      mobileController.clear();
      _selectedCity = "Rajkot";
      _selectedGender = null;
      _selectedDate = null;
      _reading = false;
      _music = false;
      _timePass = false;
    });
  }

  bool _validateAge(DateTime? dob) {
    if (dob == null) return false;
    int age = DateTime.now().year - dob.year;
    if (DateTime.now().month < dob.month ||
        (DateTime.now().month == dob.month && DateTime.now().day < dob.day)) {
      age--;
    }
    return age >= 18;
  }

  void _addOrUpdateUser() {
    if (_formKey.currentState!.validate() && _selectedGender != null && _validateAge(_selectedDate)) {
      User newUser = User(
        name: nameController.text,
        address: addressController.text,
        email: emailController.text,
        mobile: mobileController.text,
        city: _selectedCity!,
        gender: _selectedGender!,
        dob: _selectedDate!,
        hobbies: [
          if (_reading) "Reading",
          if (_music) "Music",
          if (_timePass) "Time Pass",
        ],
      );

      if (widget.userToEdit != null) {
        int index = userList.indexOf(widget.userToEdit!);
        userList[index] = newUser;
      } else {
        userList.add(newUser);
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Saved Successfully!')));

      _resetForm();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userToEdit == null ? 'Add User' : 'Edit User'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Full Name"),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a valid full name.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Address"),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter an address.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Email"),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter an email address.";
                    } else if (!value.endsWith('@gmail.com')) {
                      return "Please enter a valid Gmail address.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Mobile"),
                TextFormField(
                  controller: mobileController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter a mobile number.";
                    } else if (value.length != 10 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return "Mobile number must be exactly 10 digits.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("City"),
                DropdownButtonFormField<String>(
                  value: _selectedCity,
                  items: ["Rajkot", "Ahmedabad", "Surat", "Vadodara"]
                      .map((city) => DropdownMenuItem(value: city, child: Text(city)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCity = value;
                    });
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                Text("Gender"),
                Row(
                  children: [
                    Radio(
                      value: "Male",
                      groupValue: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value.toString();
                        });
                      },
                    ),
                    Text("Male"),
                    SizedBox(width: 20),
                    Radio(
                      value: "Female",
                      groupValue: _selectedGender,
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value.toString();
                        });
                      },
                    ),
                    Text("Female"),
                  ],
                ),
                if (_selectedGender == null)
                  Text("Please select your gender.", style: TextStyle(color: Colors.red)),
                SizedBox(height: 10),
                Text("DOB"),
                Row(
                  children: [
                    Expanded(
                      child: Text(_selectedDate == null
                          ? "Select Date"
                          : _selectedDate.toString()),
                    ),
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      child: Text("Pick Date"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ],
                ),
                if (_selectedDate != null && !_validateAge(_selectedDate))
                  Text("You must be at least 18 years old to register.", style: TextStyle(color: Colors.red)),
                SizedBox(height: 10),
                Text("Hobbies"),
                Row(
                  children: [
                    Checkbox(
                      value: _reading,
                      onChanged: (value) {
                        setState(() {
                          _reading = value!;
                        });
                      },
                    ),
                    Text("Reading"),
                    Checkbox(
                      value: _music,
                      onChanged: (value) {
                        setState(() {
                          _music = value!;
                        });
                      },
                    ),
                    Text("Music"),
                    Checkbox(
                      value: _timePass,
                      onChanged: (value) {
                        setState(() {
                          _timePass = value!;
                        });
                      },
                    ),
                    Text("Time Pass"),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _addOrUpdateUser,
                        child: Text(widget.userToEdit == null ? "Save" : "Update"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _resetForm,
                        child: Text("Reset"),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
  TextEditingController _searchController = TextEditingController();
  List<User> _filteredUsers = List.from(userList);

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterUsers);
  }

  void _filterUsers() {
    setState(() {
      _filteredUsers = userList
          .where((user) =>
          user.name.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  void _confirmDelete(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure?"),
          content: Text("Do you really want to delete this user?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  userList.removeAt(index); // Remove the user from the list
                  _filterUsers(); // Reapply the filter after deletion
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredUsers.length,
                itemBuilder: (context, index) {
                  User user = _filteredUsers[index];
                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(user.name),
                      subtitle: Text("Email: ${user.email}\nMobile: ${user.mobile}\nCity: ${user.city}\nGender: ${user.gender}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddUserScreen(userToEdit: user),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              _confirmDelete(context, index); // Show the delete confirmation dialog
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              user.isLiked ? Icons.favorite : Icons.favorite_border,
                              color: user.isLiked ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                userList[index].isLiked = !user.isLiked;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
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
    // Filter the users who are liked
    List<User> likedUsers = userList.where((user) => user.isLiked).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Users'),
        backgroundColor: Colors.red,
      ),
      body: likedUsers.isEmpty
          ? Center(child: Text('No favorite users yet.'))
          : ListView.builder(
        itemCount: likedUsers.length,
        itemBuilder: (context, index) {
          User user = likedUsers[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(user.name),
              subtitle: Text(
                "Email: ${user.email}\nMobile: ${user.mobile}\nCity: ${user.city}\nGender: ${user.gender}",
              ),
            ),
          );
        },
      ),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'About Us',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 34, color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'marrrige.jpg',
                      height: 100,
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    'Matrimony App',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Meet Our Team',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.purple.shade200),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Developed by  : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Harsh Zala (23010101307)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mentored by   : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Prof. Mehul Bhundiya  (Computer Engineering Department)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Explored by    : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'ASWDC, School Of Computer Science',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eulogized by  : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Darshan University, Rajkot, Gujarat - INDIA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'About ASWDC',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.purple.shade200),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/darshan_logo.jpg',
                      height: 130,
                      width: 700,
                    ),
                    Text(
                      'ASWDC is Application, Software and Website Development Center @ Darshan University run by Students and Staff of School Of Computer Science.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sole purpose of ASWDC is to bridge the gap between university curriculum & industry demands. Students learn cutting-edge technologies, develop real-world applications & experience professional environments @ ASWDC under the guidance of industry experts & faculty members.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.purple.shade200,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('aswdc@darshan.ac.in'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('+91-9727747317'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.web, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('www.darshan.ac.in'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.share, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('Share App'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.app_registration_outlined,
                            color: Colors.purple),
                        SizedBox(width: 8),
                        Text('More Apps'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('Rate Us'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.thumb_up, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('Like us on Facebook'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.update, color: Colors.purple),
                        SizedBox(width: 8),
                        Text('Check For Update'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey,
            ),
            Center(
              child: Text(
                '© 2025 Darshan University\nAll Rights Reserved - Privacy Policy\nMade with ❤ in India',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
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
        title: Text("Matrimonial"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            CustomGridButton(
              icon: Icons.person_add,
              label: "Add User",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddUserScreen()),
                );
              },
            ),
            CustomGridButton(
              icon: Icons.list,
              label: "User List",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserListScreen()),
                );
              },
            ),
            CustomGridButton(
              icon: Icons.favorite,
              label: "Favorite User",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoriteUserScreen()),
                );
              },
            ),
            CustomGridButton(
              icon: Icons.info,
              label: "About Us",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGridButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  CustomGridButton({required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  String address;
  String email;
  String mobile;
  String city;
  String gender;
  DateTime dob;
  List<String> hobbies;
  bool isLiked;

  User({
    required this.name,
    required this.address,
    required this.email,
    required this.mobile,
    required this.city,
    required this.gender,
    required this.dob,
    required this.hobbies,
    this.isLiked = false,
  });
}
