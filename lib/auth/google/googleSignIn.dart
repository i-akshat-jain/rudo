import 'dart:convert';
import 'package:rudo_1/all_path.dart';
import 'package:shared_preferences/shared_preferences.dart';


ValueNotifier userCredential = ValueNotifier('');
Future<dynamic> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user);
    Map<String, dynamic> userJson = {
      'uid': userCredential.user?.uid,
      'email': userCredential.user?.email,

      // Add other user details as needed
    };

    // Convert to JSON format and save to global variables or storage
    String userJsonString = json.encode(userJson);
    print(userJsonString);
    // Update the userCredential value
    // userCredential = userJsonString;
    print(userCredential);
    return userCredential;
  } on Exception catch (e) {
    // TODO
    print('exception->$e');
  }
}

Future<bool> signOutFromGoogle() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('userCredential');
    await FirebaseAuth.instance.signOut();
    return true;
  } on Exception catch (_) {
    return false;
  }
}
