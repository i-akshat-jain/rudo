import 'package:rudo_1/all_path.dart';

class askUploadPost extends StatelessWidget {
  const askUploadPost(
      {super.key,
      required this.title,
      required this.icon,
      required this.postAction});

  final String title;
  final IconData icon;
  final Function postAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        postAction();
        print("$title, buttonClicked");
        
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 8, top: 8.0),
        child: Container(
          child: Row(
            children: [
              Icon(icon, size: 17, color: Color.fromARGB(255, 228, 197, 197)),
              SizedBox(width: 3),
              Text(
                title,
                style: TextStyle(
                  color: Color.fromARGB(255, 228, 197, 197),
                  fontWeight: FontWeight.bold,
                  // fontSize: 20,
                  fontFamily: 'Manrope',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

