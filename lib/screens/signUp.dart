import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lsd/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey _form = GlobalKey();
  // final _formKey = GlobalKey<FormState>();
  final _emailaddress = TextEditingController();
  final _password = TextEditingController();
  final _fullname = TextEditingController();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = false;
  bool _isPasswordVisible = false;

  void tooglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void navigateToForgetPassword() {
    //navigation logic here
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var Width = screenSize.width;
    var Height = screenSize.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 10),
      body: Form(
        key: _form,
        child: ListView(children: [
          Image.asset(
            "assets/images/image.png",
            height: Height * 0.5,
            width: Width * 0.8,
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: Height * 0.01,
          ),
          ListTile(
            title: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _fullname,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.face,
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                labelStyle: const TextStyle(
                  fontFamily: 'Nunito Sans',
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(),
                ),
                labelText: "Full Name",
              ),
              onSaved: (value) {
                setState(() {
                  fullname = value!;
                });
              },
            ),
          ),
          SizedBox(
            height: Height * 0.01,
          ),
          ListTile(
            title: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailaddress,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.face,
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                labelStyle: const TextStyle(
                  fontFamily: 'Nunito Sans',
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(),
                ),
                labelText: "Username / Phone number / Email Address",
              ),
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return 'Enter a valid email!';
                }
                return null;
              },
              onSaved: (value) {
                setState(() {
                  email = value!;
                });
              },
            ),
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: Icon(
          //       Icons.face,
          //       color: Color.fromRGBO(187, 187, 187, 1),
          //     ),
          //     labelStyle: TextStyle(
          //       fontFamily: 'Nunito Sans',
          //       color: Color.fromRGBO(187, 187, 187, 1),
          //     ),
          //     border: InputBorder.none,
          //     labelText: "Username / Phone number",
          //   ),
          // ),
          SizedBox(
            height: Height * 0.01,
          ),
          ListTile(
            title: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                icon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: tooglePasswordVisibility,
                    icon: Icon(_isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off)),
                labelStyle: const TextStyle(
                  fontFamily: 'Nunito Sans',
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(),
                ),
              ),
              onSaved: (value) {
                setState(() {
                  password = value!;
                });
              },
            ),
          ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: const Icon(Icons.lock),
          //     suffixIcon: IconButton(
          //         onPressed: tooglePasswordVisibility,
          //         icon: Icon(_isPasswordVisible
          //             ? Icons.visibility
          //             : Icons.visibility_off)),
          //     // suffixIcon: Row(
          //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //   mainAxisSize: MainAxisSize.min,
          //     //   children: <Widget>[
          //     //     IconButton(icon: Icon(Icons.clear)),
          //     //     IconButton(onPressed: _authBloc.switchObscureTextMode, icon: Icon(snapshot.data ? Icons.visibility: Icons.visibility_off))

          //     //   ],
          //     // ) Icon(
          //     //   Icons.password,

          //     //   color: Color.fromRGBO(187, 187, 187, 1),
          //     // ),
          //     labelStyle: const TextStyle(
          //       fontFamily: 'Nunito Sans',
          //       color: Color.fromRGBO(187, 187, 187, 1),
          //     ),
          //     border: InputBorder.none,
          //     labelText: "Password",
          //   ),
          // ),
          SizedBox(
            height: Height * 0.005,
          ),
          TextButton(
            onPressed: () {
              navigateToForgetPassword();
            },
            child: Container(
              alignment: Alignment.topRight,
              child: const Text(
                "Forget Password",
                style: TextStyle(
                  color: Color.fromRGBO(165, 165, 165, 1),
                  // decoration: TextDecoration.underline
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onDoubleTap: navigateToForgetPassword,
          //   child: Container(
          //     width: Width * 0.8,
          //     child: const Text(
          //       "Forget Password",
          //       style: TextStyle(
          //         color: Color.fromRGBO(165, 165, 165, 1),
          //         //decoration: TextDecoration.underline
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 5,
          ),
          /* 

          ritika ye refence code for backend
          
          */
          // ElevatedButton(
          //     onPressed: () async {
          //       if (_form.currentState!.validate()) {
          //         _form.currentState!.save();
          //         login
          //             ? AuthServices.signinUser(email, password, context)
          //             : AuthServices.signupUser(
          //                 email, password, fullname, context);
          //       }
          //     },
          //     child: Text('Login')),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              height: Height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  //yaha aayega code
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(36, 92, 102, 1),
                    textStyle: const TextStyle(
                      //backgroundColor: Color.fromARGB(255, 248, 245, 245),
                      fontSize: 10,
                      fontFamily: 'Nunito Sans',
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "SignUp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(children: [
            Expanded(
                child: Divider(
              indent: 15.0,
              endIndent: 10.0,
              thickness: 1,
            )),
            Text(
              'Already have an account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFACACAC),
                fontSize: 12,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                height: 0.14,
              ),
            ),
            Expanded(
                child: Divider(
              indent: 10.0,
              endIndent: 20.0,
              thickness: 1,
            )),
          ]),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            ),
            child: const Text(
              "Log In",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Nunito Sans",
                  color: Color.fromRGBO(100, 100, 100, 1)),
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          const Row(children: <Widget>[
            Expanded(
                child: Divider(
              indent: 15.0,
              endIndent: 10.0,
              thickness: 1,
            )),
            Text(
              "Or",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(172, 172, 172, 1),
                fontSize: 12,
                fontFamily: 'Nunito Sans',
                height: 0.14,
              ),
            ),
            Expanded(
                child: Divider(
              indent: 10.0,
              endIndent: 28.0,
              thickness: 1,
            )),
          ]),
          const SizedBox(
            height: 4,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(Width * 0.3, 0, Width * 0.3, 0),
            child: ElevatedButton(
                onPressed: () {
                  // add code for google account adition
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),

                      //side: BorderSide(color: Color.fromARGB(a, r, g, b))
                    )),
                child: const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.google,
                      color: Color.fromRGBO(105, 105, 105, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Color.fromRGBO(105, 105, 105, 1),
                        fontFamily: "Nunito Sans",
                        fontSize: 16.0,
                      ),
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 4,
          ),
        ]),
      ),
    );
  }
}
