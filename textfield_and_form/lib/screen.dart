import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

TextEditingController email= TextEditingController();
TextEditingController password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),

          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'Enter your email',
              labelText: 'your email', 
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              prefixIcon: Icon( Icons.email_outlined),
              suffixIcon: IconButton(
                onPressed: () {
                  email.clear();
                },
                icon: Icon(Icons.close),
              )
              ),
              ),

          SizedBox(height: 10,),

          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              labelText: 'your password', 
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
              prefixIcon: Icon( Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () {
                  password.clear();
                },
                icon: Icon(Icons.close),
              )
              ),
              ),

          SizedBox(height: 10,),
            TextField(
            maxLines: 7,
            decoration: InputDecoration(
              hintText: 'Enter your description',
              labelText: 'your description', 
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
               
              ),
              ),

          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              print(email.text);
            },
            child: Text('login'),
          ),
        ],
      ),
    );
  }
}