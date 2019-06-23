import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfileMaterialState createState() => _ProfileMaterialState();
}

class _ProfileMaterialState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.centerLeft,
        //       end: Alignment.centerRight,
        //       colors: [
        //         Colors.deepPurple[600],
        //         Colors.white54
        //       ],
        //     ),
        //   ),
        // ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Builder(
                  builder: (context) => Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'First name'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter your first name';
                            }
                          },
                          onSaved: (val) =>
                              setState(() => _user.firstName = val),
                        ),
                        TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Last name'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your last name.';
                              }
                            },
                            onSaved: (val) =>
                                setState(() => _user.lastName = val)),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                          child: Text('Subscribe'),
                        ),
                        SwitchListTile(
                            title: const Text('Monthly Newsletter'),
                            value: _user.newsletter,
                            onChanged: (bool val) =>
                                setState(() => _user.newsletter = val)),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                          child: Text('Interests'),
                        ),
                        CheckboxListTile(
                            title: const Text('Cooking'),
                            value: _user.passions[User.PassionCooking],
                            onChanged: (val) {
                              setState(() =>
                                  _user.passions[User.PassionCooking] = val);
                            }),
                        CheckboxListTile(
                            title: const Text('Traveling'),
                            value: _user.passions[User.PassionTraveling],
                            onChanged: (val) {
                              setState(() => _user
                                  .passions[User.PassionTraveling] = val);
                            }),
                        CheckboxListTile(
                            title: const Text('Hiking'),
                            value: _user.passions[User.PassionHiking],
                            onChanged: (val) {
                              setState(() =>
                                  _user.passions[User.PassionHiking] = val);
                            }),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 16.0),
                            child: RaisedButton(
                                onPressed: () {
                                  final form = _formKey.currentState;
                                  if (form.validate()) {
                                    form.save();
                                    _user.save();
                                    _showDialog(context);
                                  }
                                },
                                child: Text('Save')
                              )
                            ),
                        ]
                    )
                  )
                )
              )
            ]
          );
        },
      )
    );
  }  
  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}