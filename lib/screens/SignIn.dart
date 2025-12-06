import 'dart:convert';

import 'package:alinfo9_workshops/screens/MyFilmsListView.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Constants/Constants.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  late String email;
  late String password;
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width =size.width;
    final height =size.height;
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: width*0.06,
            vertical: height*0.03
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: width*0.8,
              ),
              TextFormField(
                onSaved: (value) {
                  email = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) return "Email cannot be empty";
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: height*0.02,
              ),
              TextFormField(
                obscureText: true,
                onSaved: (value) {
                  password = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) return "password cannot be empty";
                },
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: height*0.02,
              ),

             GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, "/signup");
               },
               child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("Create Acoount"),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.deepOrange,
                      )
                    ],

                ),
             ),
              SizedBox(
                height: height*0.02,
              ),
              Container(
                width: width*0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white),
                    onPressed: () async{
                      if (_globalKey.currentState!.validate()) {
                        _globalKey.currentState!.save();
                        Map<String, String> headers = {
                          "Content-Type": "application/json; charset=UTF-8"
                        };
                        Map<String, dynamic> userData = {
                          "email": email,
                          "password": password,
                        };
                        try {
                          final response = await http.post(
                              Uri.parse(Constants.base_url + "/signin"),
                              headers: headers,
                              body: json.encode(userData)
                          );

                          if(response.statusCode==200){
                            Navigator.pushReplacementNamed(context, "/tabbarnav");
                          }
                             else{
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text("Invalid Credentials"),
                              );
                            });
                          }
                        } catch (e) {
                          print(e);
                        }





                      }
                    },
                    child: Text("SIGN IN")),
              )
            ],
          ),
        ),
      ),
    );
  }
}