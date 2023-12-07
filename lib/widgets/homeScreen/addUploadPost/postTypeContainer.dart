import 'package:rudo_1/all_path.dart';

class PostTypeContainer extends StatelessWidget {
  const PostTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> languages = ["Hindi", "English"]; //To be changed
    String selectedLanguage = languages.first;
    return Container(
        constraints: BoxConstraints(
          maxHeight: double.infinity,
        ),
        // // color: Colors.blue, // Adjust the color as needed
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Row(children: [
                Column(children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.black54)),
                    child: Image.network(
                        "https://media.istockphoto.com/id/1703845111/vector/user-profile-icon-with-transparent-avatar-or-person-sign-profile-picture-portrait-symbol.jpg?s=1024x1024&w=is&k=20&c=0vJIyvncg9U3ujLGJTXmjxtJGRseGqB5OxSkQJ5m5Hg="),
                  ),
                ]),
                Column(children: [
                  Container(
                    child: Text("Akshat Jain"), //To be changed
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 5.0,
                    ),
                    child: Container(
                    height: 35,
                   
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 3,
                              offset: Offset(0, 1)),
                        ]),
                    child:  DropdownButton<String>(
                        value: selectedLanguage,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (String? newValue) {
                          selectedLanguage = newValue!;
                        },
                        items: languages.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  )
                ]),
              ]),
            ),

            Expanded(
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Manrope',
                ),
                decoration: InputDecoration(
                  hintText: "What's on your mind today?",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Manrope',
                  ),
                  border: InputBorder.none,
                ),
                expands: true,
                maxLines: null,
              ),
            ),
          ],
        ));
  }
}
