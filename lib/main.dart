import 'package:rudo_1/all_path.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Wrapper(),
        '/HomePage': (context) => const HomePage(),
        '/SignIn': (context) => const SignIn(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF9EEDD)),
        useMaterial3: true,
      ),
    );
  }
}

