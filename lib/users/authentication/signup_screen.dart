import 'dart:convert';

import 'package:clothes_app/api_connection/api_connection.dart';
import 'package:clothes_app/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;


class SingUpScreen extends StatefulWidget
{


  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen>
{
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  validateUserEmail() async
  {
    try
    {
      var res = await http.post(
        Uri.parse(API.validateEmail),
        body: {
          'user_email': emailController.text.trim(),
        },
      );

      if(res.statusCode == 200) //connection with api to server success
        {
          var resBodyOfValidateEmail = jsonDecode(res.body);

          if(resBodyOfValidateEmail['emailFound'] == true)
            {
              Fluttertoast.showToast(msg: "Email is already in someone else use.try another email");
            }
          else
            {
              //register & save new user record to database
            }
        }

    }
    catch(e)
    {

    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, cons)
        {
          return ConstrainedBox(
            constraints:BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //singup screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset(
                      "images/register.jpg",
                    ),
                  ),

                  //singup screen singup form
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container( // implement the decoration
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, -3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                        child: Column(
                          children: [

                            //name email -password singup button
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  //name
                                  TextFormField(
                                    controller: nameController,
                                    validator: (val) => val =="" ? "Please write name" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      hintText: "name...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      disabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white, //fill the withe color in the  text box
                                      filled: true,
                                    ),
                                  ),

                                  const SizedBox(height: 18,),

                                  //email
                                  TextFormField(
                                    controller: emailController,
                                    validator: (val) => val =="" ? "Please write email" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      hintText: "email...",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      focusedBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      disabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white, //fill the withe color in the  text box
                                      filled: true,
                                    ),
                                  ),

                                  const SizedBox(height: 18,),//create text box height

                                  //password
                                  Obx(
                                        ()=> TextFormField(
                                      controller: passwordController,
                                      obscureText: isObsecure.value,
                                      validator: (val) => val =="" ? "Please write password" : null,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: Obx(              //hidden password icon
                                              ()=> GestureDetector(
                                            onTap: ()
                                            {
                                              isObsecure.value = !isObsecure.value; // hiden the password
                                            },
                                            child: Icon(
                                              isObsecure.value ? Icons.visibility_off : Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        hintText: "passsword...",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        enabledBorder:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        focusedBorder:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        disabledBorder:  OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 6,
                                        ),
                                        fillColor: Colors.white, //fill the withe color in the  text box
                                        filled: true,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 18,),
                                  //button
                                  Material(     // singup button create
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: ()
                                      {
                                        if(formKey.currentState!.validate())
                                        {
                                          //validate the user email
                                          validateUserEmail();
                                        }
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          "Sing up",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            const SizedBox(height: 16,),

                            //already have an account button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,  //row wiget center the horizontaly
                              children: [
                                const Text(
                                  "Already have an Account ?",

                                ),
                                TextButton(
                                  onPressed: ()
                                  {
                                    Get.to(LoginScreen());
                                  },
                                  child: const Text(
                                    "Login Here",
                                    style: TextStyle(
                                      color: Colors.purpleAccent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
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
