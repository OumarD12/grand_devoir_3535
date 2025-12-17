import 'package:flutter/material.dart';
import 'listeLivre.dart';
class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_library, size: 32, color: Theme.of(context).colorScheme.primary),
                SizedBox(width: 10),
                Text(
                  'La Maison des Livres ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                   
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            TextField(
              controller: controllerUsername,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
              labelText: 'Username',
            hintText: 'Enter your username',
        
            ),
            )
,            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              controller: controllerPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
              fillColor: Colors.white,
                hintText: 'Enter your password',
                border: OutlineInputBorder()
                
              ),
            )
,            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.deepOrangeAccent,),
              onPressed: () {
                if ( controllerUsername.text == 'admin' && controllerPassword.text == 'admin') {
              Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => ListeLivre(),
                              ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Invalid Credentials')),
                
                  );
                }
              },
              child: Text('Login',
              style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
            ),
          ],
        ),
      
      ),
    );
  }
}