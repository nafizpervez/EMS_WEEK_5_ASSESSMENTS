import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Profile Details Employee';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 160.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Login:'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Name:'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Organization:'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.picture_in_picture_sharp,
                          color: Colors.blueGrey,
                          size: 100.0,
                        ),
                        Text('Profile Picture')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          child: Text(
            'General',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 210.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Designation:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Joining Date:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Employment Term:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Work Location:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Bank Account (Salary):'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Bank Name:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '2 Factor Authentication: bool value (active/inactive):',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Department/Functions:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Confirmation Date:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Supervisor:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Insurance Category:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('TIN:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('PF Code:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'PF Contribution:',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          child: Text(
            'Personal',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 190.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Date of Birth:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Marital Status:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("Father's Name:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Spouse Name:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Nationality:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('National ID No:'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Gender:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Religion:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("Mother's Name:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('No. of Child:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Blood Group:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Passport No:'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          child: Text(
            'Contact Details',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 210.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mailing Address:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Office Email:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("Office Phone:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Office Mobile:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Emergency Contact:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Skype ID:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Facebook ID:'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Permanent Address:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Other Email:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("Extension:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Personal Mobile:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Emergency Contact:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Twitter ID:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Linkedin ID:'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          child: Text(
            'Others',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 210.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('S.S.C./Equivalent:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('H.S.C./Equivalent:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("Graduation:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Post Graduation:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Professional Certification:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Social Affliation:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Habits:'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('School:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('College:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("University:"),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('University:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Professional Affliation:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Awards/Achievements:'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Total Job Experience:'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
              label: const Text('Back'),
            ),
          ],
        ),
      ],
    );
  }
}
