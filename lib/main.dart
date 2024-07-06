import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier(
        GraphQLClient(
          link: HttpLink('http://127.0.0.1:8000/graphql'),
          cache: GraphQLCache(),
        ),
      ),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: getUserInfo(context), // Pass the context here
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final user = snapshot.data;
            final userName = user?['userName'];
            final email = user?['email'];

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('User Name: $userName'),
                  Text('Email: $email'),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Future<Map<String, dynamic>> getUserInfo(BuildContext context) async {
    final QueryResult result = await GraphQLProvider.of(context).value.query(
          QueryOptions(
            document: gql(getUserByIdQuery),
            // variables: {'_id': '65e88dfd637d94ff3edc3aab'}, // Replace with an actual user ID
          ),
        );

    if (result.hasException) {
      print('${result.exception.toString()}');
      throw Exception(
          'Error fetching user info: ${result.exception.toString()}');

    }
    
    return result.data?['Users'];
  }
}

const String getUserByIdQuery = r'''
  query {
    User {
      userName
      email
    }
  }
''';

// import 'package:rudo_1/all_path.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';


// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(
//     GraphQLProvider(
//       client: clientNotifier,
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const Wrapper(),
//         '/BottomNavigator': (context) => const BottomNavigator(),
//         '/HomePage': (context) => const HomePage(),
//         '/SignIn': (context) => const SignIn(),
//       },
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF9EEDD)),
//         useMaterial3: true,
//       ),
//     );
//   }
// }

