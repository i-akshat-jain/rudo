import 'package:flutter/material.dart';
import 'package:rudo_1/widgets/homeScreen/addUploadPost/postTypeContainer.dart';

class PostBottomSheet extends StatefulWidget {
  @override
  _PostBottomSheetState createState() => _PostBottomSheetState();
}

class _PostBottomSheetState extends State<PostBottomSheet> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool leftClick = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          shape: Border(
            bottom: BorderSide(
              color: Color(0xFFE48F45).withOpacity(0.3),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close,
                    size: 17,
                    color: Color.fromARGB(255, 228, 197, 197),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 75,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 197, 197),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Manrope",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Color(0xFFE48F45),
            tabs: [
              Center(
                child: Text("Ask Question"),
              ),
              Center(
                child: Text("Upload Post"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PostTypeContainer(),
            Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );
  }
}
