import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class LoginScreen extends StatefulWidget
{


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

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
                  //loging screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset(
                      "images/shoping.jpg",
                    ),
                  ),

                  //login screen sign-in form
                  Container(
                    decoration: BoxDecoration(
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
                    child: Column(
                      children: [
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
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

                              SizedBox(height: 18,),//create text box height

                              //password
                              TextFormField(
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

                            ],
                          ),
                        ),
                      ],
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
