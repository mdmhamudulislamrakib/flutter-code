import 'package:flutter/material.dart';
class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() =>  AddUserScreenState();
}

class  AddUserScreenState extends State<AddUserScreen> {

  TextEditingController name = TextEditingController();
  TextEditingController email= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User Name and Email'),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(15),  
          children: [
            TextFormField(
              controller: name,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text('Add User'),
            ),
          ],
        ),
      ),
    );
  }
}