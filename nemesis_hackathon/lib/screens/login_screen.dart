import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();

  final _loginPassword = TextEditingController();

  final _passwordController = TextEditingController();

  void onSubmit(registerNumber, password) {
    final validate = _form.currentState!.validate();
    if (!validate) {
      return;
    }
    // postLoginDetails(registerNumber, password);
    _passwordController.clear();
    _passwordController.clear();
  }

  bool changeIcon = false;
  bool IconPosition = false;
  double positionRight = 20;
  double positionBottom = -9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Text('Login',
                              style: TextStyle(
                                // color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                          key: _form,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: TextFormField(
                                  controller: _loginPassword,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter a valid email';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black),
                                  cursorColor:
                                      Theme.of(context).colorScheme.onPrimary,
                                  autocorrect: false,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.red, width: 1.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.red, width: 1.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.27),
                                    hintText: 'Email',
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Stack(
                                children: [
                                  Positioned(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0),
                                      child: TextFormField(
                                        enableSuggestions: false,
                                        controller: _passwordController,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            setState(() {
                                              positionRight = 20;
                                              positionBottom = 10;
                                            });
                                            return 'Enter a valid password';
                                          } else {
                                            setState(() {
                                              positionRight = 20;
                                              positionBottom = -9;
                                            });
                                            return null;
                                          }
                                        },
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        style: TextStyle(color: Colors.black),
                                        cursorColor: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        autocorrect: false,
                                        textInputAction: TextInputAction.next,
                                        obscureText: changeIcon ? true : false,
                                        decoration: InputDecoration(
                                          errorStyle: const TextStyle(
                                            fontSize: 10,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: const BorderSide(
                                                color: Colors.red, width: 1.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: const BorderSide(
                                                color: Colors.red, width: 1.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: const BorderSide(
                                                color: Colors.grey, width: 0.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: const BorderSide(
                                                color: Colors.grey, width: 0.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              Colors.white.withOpacity(0.27),
                                          hintText: 'Password',
                                          hintStyle: const TextStyle(
                                              color: Colors.black),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // right: 20,
                                    // bottom: -9,
                                    right: positionRight,
                                    bottom: positionBottom,
                                    child: SizedBox(
                                      height: 63,
                                      child: changeIcon
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  changeIcon = !changeIcon;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.visibility_off,
                                                color: Colors.black,
                                                size: 22,
                                              ),
                                            )
                                          : IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  changeIcon = !changeIcon;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.visibility,
                                                color: Colors.black,
                                                size: 22,
                                              ),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  onSubmit(_loginPassword.text,
                                      _passwordController.text);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Theme.of(context).colorScheme.primary,
                                  // side:
                                  //     const BorderSide(color: Colors.black)
                                ),
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
