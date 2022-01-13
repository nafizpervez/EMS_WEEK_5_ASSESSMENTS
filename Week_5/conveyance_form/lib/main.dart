import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'input_style.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Conveyance Form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: ConveyanceForm(),
      ),
    );
  }
}

final _approvalHeader = [
  'Prepared by',
  'Recommended by',
  'Recommended by',
  'Recommended by',
  'Recommended by',
  'Recommended by'
];
final ScrollController _scC = ScrollController();

// final _billHeaders = [
//   'Overtime',
//   'Holidays',
//   'Total',
//   'Conveyance',
//   'Mobile Bill',
//   'Night/Iftar Allowance',
//   'Total Payable',
//   'Received'
// ];

/// This is the stateful widget that the main application instantiates.

class ConveyanceForm extends StatefulWidget {
  const ConveyanceForm({Key? key}) : super(key: key);

  @override
  State<ConveyanceForm> createState() => _ConveyanceFormState();
}

class _ConveyanceFormState extends State<ConveyanceForm> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return FormBuilder(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text('Personal Details',
                textAlign: TextAlign.start, style: TextStyle(fontSize: 18.0)),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'serial_number',
              decoration: inputStyle(
                'Serial Number',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'application_date',
              decoration: inputStyle(
                'Application Date',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'name',
              decoration: inputStyle(
                'Name',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'designation',
              decoration: inputStyle(
                'Designation',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'department',
              decoration: inputStyle(
                'Department',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text('Bills',
                textAlign: TextAlign.start, style: TextStyle(fontSize: 18.0)),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: FormBuilderDropdown(
                        name: 'bill_type',
                        allowClear: true,
                        focusColor: Colors.transparent,
                        decoration: inputStyle(
                          'Bill Type',
                          null,
                          null,
                        ),
                        items: [
                          {
                            "bill_type": 'Transportation',
                            "type_id": 'transportation'
                          },
                          {
                            "bill_type": 'Overtime',
                            "type_id": 'overtime'
                          },
                          {
                            "bill_type": 'Holiday',
                            "type_id": 'holiday'
                          },
                          
                        ]
                            .map(
                              (e) => DropdownMenuItem(
                                child: Text('${e["bill_type"]}'),
                                value: (e['type_id']),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      flex: 2,
                      child: FormBuilderDropdown(
                        name: 'line_manager',
                        allowClear: true,
                        focusColor: Colors.transparent,
                        decoration: inputStyle(
                          'Line Manager',
                          null,
                          null,
                        ),
                        items: [
                          {
                            "person": 'Md. Shahriyar Alam',
                            "employee_id": '2010173'
                          },
                          {
                            "person": 'Kazi Masum Hossain',
                            "employee_id": '2010117'
                          },
                          {
                            "person": 'Fahim Khandoker',
                            "employee_id": '2010174'
                          },
                        ]
                            .map(
                              (e) => DropdownMenuItem(
                                child: Text('${e["person"]}'),
                                value: (e['employee_id']),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: FormBuilderDateTimePicker(
                        name: 'in_time',
                        decoration: inputStyle(
                          'In Time',
                          null,
                          null,
                        ),
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(context),
                          ],
                        ),
                        firstDate: DateTime.now(),
                        inputType: InputType.both,
                        // onChanged: (value) {
                        //   setState(() {
                        //     _endDateInit = value!;
                        //   });
                        // },
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      flex: 2,
                      child: FormBuilderDateTimePicker(
                        name: 'out_time',
                        decoration: inputStyle(
                          'Out Time',
                          null,
                          null,
                        ),
                        validator: FormBuilderValidators.compose(
                          [
                            FormBuilderValidators.required(context),
                          ],
                        ),
                        firstDate: DateTime.now(),
                        inputType: InputType.both,
                        // onChanged: (value) {
                        //   setState(() {
                        //     _endDateInit = value!;
                        //   });
                        // },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'from',
                        decoration: inputStyle(
                          'From',
                          null,
                          null,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'to',
                        decoration: inputStyle(
                          'To',
                          null,
                          null,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'payable_amount',
              decoration: inputStyle(
                'Payable Amount',
                null,
                null,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormBuilderTextField(
              name: 'further_details',
              decoration: inputStyle(
                'Further Details',
                null,
                null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Approval',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0)),
                ],
              ),
            ),
            Table(
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 0),
              children: [
                TableRow(
                    children: _approvalHeader
                        .map(
                          (header) => Text(
                            header,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 15.0),
                          ),
                        )
                        .toList()),
                TableRow(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'username',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'designation',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'Mohammad Ripon',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'Asst. Manager',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'Mahmud Hussain Chowdhury',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        Text(
                          'Senior Manager',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'Faridul Hasan Shuvo',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'CEO',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'Mohammed Abdul Alim',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'Finance & Accounts',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Icon(
                          Icons.done,
                          color: Colors.black12,
                        ),
                        Text(
                          'Zahir Ahmed',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'Managing Director',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      // defaultColumnWidth: FixedColumnWidth(116.0),
    );
  }
}
