import 'package:rudo_1/all_path.dart';

class signUpBox extends StatelessWidget {
  const signUpBox({super.key, required this.logo, required this.loginPlatform, required this.onTapFunction,
  });

  final Widget logo;
  final String loginPlatform;
  final Future<dynamic> Function() onTapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
           final result = await onTapFunction();
          // Handle the click action here
          print('Button Clicked!');
          // Add your logic for what should happen on button click
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            color: Color(0xFFFFFFFF), // Set the color of the box
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: logo,
                ),
                Text(
                  loginPlatform,
                  style: TextStyle(
                    color: Color(0xFF171A1F),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
        ));
  }
}
