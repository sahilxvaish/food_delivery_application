import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
final void Function()? onTap;

   const LoginPage({
     super.key,
     required this.onTap,
   });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async {
    //get instance of auth service
    final _authService = AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }

    //display any errors
    catch(e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            //message, app slogan
            Text(
              "Eatz Co.",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            //email textfeild
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),

            const SizedBox(height: 10),

            //password textfield
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),

            const SizedBox(height: 10),

            //sign in button
            MyButton(
                onTap: login,
                text: "Sign In",
            ),

            const SizedBox(height: 25),

            //not a memeber? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "ᴄʀᴇᴀᴛᴇᴅ ᴡɪᴛʜ 🤍 ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  // onTap: widget.onTap,
                  child: Text(
                      "ʙʏ ꜱᴀʜɪʟ ᴠᴀɪꜱʜ.",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            // const SizedBox(height: 50),
            //
            // Text("Created with ❤️ by Sahil Vaish.")
          ],
        ),
      ),
    );
  }
}
