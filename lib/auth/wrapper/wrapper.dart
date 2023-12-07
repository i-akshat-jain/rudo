import 'package:rudo_1/all_path.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}
class _WrapperState extends State<Wrapper> {

    late ValueNotifier<bool> isLoggedIn;
  // Function to check the authentication state
  // Future<bool> isLoggedIn() async {
  //   // Check if the userCredential is empty
  //   final prefs = await SharedPreferences.getInstance();
  //   final userCredentialString = prefs.getString('userCredential');
  //   return userCredentialString != null && userCredentialString.isNotEmpty;
  // }

  @override
  void initState() {
    super.initState();
    isLoggedIn = ValueNotifier(false);
    // Perform any initializations if needed
    checkAuthenticationAndNavigate();
  }

  Future<void> checkAuthenticationAndNavigate() async {
    // Check if the user is logged in
    bool userLoggedIn = await isLoggedInFromStorage();
    isLoggedIn.value = userLoggedIn;


    // Navigate to the appropriate page based on the authentication state
    Navigator.pushReplacementNamed(
      context,
      userLoggedIn ? '/HomePage' : '/SignIn',
    );
  }
  Future<bool> isLoggedInFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final userCredentialString = prefs.getString('userCredential');
    return userCredentialString != null && userCredentialString.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    // Use the Provider to provide the state to the app
    return Provider(
      create: (_) => isLoggedIn,
      child: Center(
        child: Container(child: const CircularProgressIndicator()),
      ),
    );
  }
}
