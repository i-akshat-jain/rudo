import 'package:rudo_1/user/userData.dart';


class DatabaseHelper {
  final String dbName = 'user_database.db';
  final String tableName = 'user_table';

  Future<void> initDatabase() async {
    // Initialize your database, create tables if necessary
  }

  Future<void> saveUserData(UserData userData) async {
    // Save the user data to the database
  }

  Future<UserData?> getUserData() async {
    // Retrieve user data from the database
  }
}
