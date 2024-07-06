import 'package:rudo_1/all_path.dart';

class AddUpload extends StatelessWidget {
  const AddUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1.5, color: Colors.black54)),
                      child: Image.network(
                          "https://media.istockphoto.com/id/1703845111/vector/user-profile-icon-with-transparent-avatar-or-person-sign-profile-picture-portrait-symbol.jpg?s=1024x1024&w=is&k=20&c=0vJIyvncg9U3ujLGJTXmjxtJGRseGqB5OxSkQJ5m5Hg="),
                    ),
                    GestureDetector(
                        onTap: () async {
                          // Handle the click action here
                          print('Type Here!');
                          // Add your logic for what should happen on button click
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFE48F45).withOpacity(0.3),
                              ),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            // border: Border.all(width: 1, color: Colors.black54)
                          ),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child:  Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                "What is on your mind Bow?",
                                style: TextStyle(
                                    color: Color(0xFF000000).withOpacity(0.3),
                                    fontSize: 15,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    height: 0.14),
                              )),
                        ))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  askUploadPost(
                      postAction: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            builder: (context) {
                              return FractionallySizedBox(
                                heightFactor: 0.95,
                                child: PostBottomSheet(),
                              );
                            });
                      },
                      title: "Ask",
                      icon: Icons.favorite),
                  const Text(
                    "|",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  askUploadPost(
                      postAction: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            builder: (context) {
                              return FractionallySizedBox(
                                heightFactor: 0.95,
                                child: PostBottomSheet(),
                              );
                            });
                      },
                      title: "Answer",
                      icon: Icons.favorite),
                  const Text(
                    "|",
                    style: TextStyle(
                      color: Colors.grey,

                      // fontSize: 20,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  askUploadPost(
                      postAction: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            builder: (context) {
                              return FractionallySizedBox(
                                heightFactor: 0.95,
                                child: PostBottomSheet(),
                              );
                            });
                      },
                      title: "Post",
                      icon: Icons.favorite)
                ],
              ),
            ),
          ],
        ));
  }
}
