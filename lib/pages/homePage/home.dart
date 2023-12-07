import 'package:rudo_1/all_path.dart';
import 'package:rudo_1/widgets/homeScreen/addUploadPost/askAnsPostType.dart';

// import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.black54)),
              child: Image.network(
                  "https://media.istockphoto.com/id/1703845111/vector/user-profile-icon-with-transparent-avatar-or-person-sign-profile-picture-portrait-symbol.jpg?s=1024x1024&w=is&k=20&c=0vJIyvncg9U3ujLGJTXmjxtJGRseGqB5OxSkQJ5m5Hg="),
            ),
            SizedBox(width: 5),
            const Center(
              child: Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFF9EEDC),
        shape: Border(
          bottom: BorderSide(
            color: Color(0xFFE48F45).withOpacity(0.3),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: AddUpload(),
            ),
            

        
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        signOutFromGoogle();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                        setState() {
                          userCredential = '' as ValueNotifier;
                        }
                      },
                      child: Text("Click Me"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
