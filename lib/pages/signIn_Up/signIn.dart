import 'package:rudo_1/all_path.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  ValueNotifier userCredential = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF9EEDD),
      ),
      home: ValueListenableBuilder(
          valueListenable: userCredential,
          builder: (context, value, child) {
            return (userCredential.value == '' || userCredential.value == null)
                ? Scaffold(
                    body: SingleChildScrollView(
                      child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Rudo',
                                style: TextStyle(
                                  color: Color(0xFFE48F45),
                                  fontSize: 55,
                                  fontFamily: 'Rochester',
                                  fontWeight: FontWeight.w400,
                                  height: 0.01,
                                ),
                              ),
                              const SizedBox(
                                height: 89,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'By continuing you indicate that you agree to Rudo\'s',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Terms of Service and Privacy Policy',
                                    style: TextStyle(
                                      color: Color(0xFF2666A9),
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.95,
                                decoration: BoxDecoration(
                                  color: const Color(
                                      0xFFF9EEDD), // Set the color of the box
                                  borderRadius: BorderRadius.circular(
                                      5), // Set the border curve
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: signUpBox(
                                          onTapFunction: () async {
                                            userCredential.value =
                                                await signInWithGoogle();
                                            if (userCredential.value != null)
                                              // call api to send data to home page
                                              UserData userData = UserData(
                                                uid: userCredential
                                                    .value.user!.uid,
                                                email: userCredential
                                                    .value.user!.email,
                                              );

                                            print(userCredential
                                                .value.user!.email);

                                            return 'Result of the asynchronous operation';
                                          },
                                          logo: SvgPicture.asset(
                                              'assets/logos/Google.svg'),
                                          loginPlatform: 'Continue with Google',
                                        )),
                                  ],
                                ),
                              ),
                              Row(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width *
                                                    0.8) /
                                                2,
                                        height: 45,
                                        padding: const EdgeInsets.only(
                                            top: 11, bottom: 10),
                                        decoration: ShapeDecoration(
                                          color: const Color(0x3FF9EEDC),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(53),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x11171A1F),
                                              blurRadius: 1,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Login',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400,
                                                height: 0.14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width *
                                                    0.8) /
                                                2,
                                        height: 45,
                                        padding: const EdgeInsets.only(
                                            top: 11, bottom: 10),
                                        decoration: ShapeDecoration(
                                          color: const Color(0x3FF9EEDC),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(53),
                                          ),
                                          shadows: const [
                                            BoxShadow(
                                              color: Color(0x11171A1F),
                                              blurRadius: 1,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'SignUp with Email',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400,
                                                height: 0.14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ])
                            ],
                          )),
                    ),
                  )
                : const BottomNavigator();
          }),
    );
  }
}
