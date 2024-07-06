// queries.dart
const String getUserByIdQuery = r'''
  query GetUserById($userID: Int!) {
    user {
      userName
      email
    }
  }
''';



// const String getPetByIdQuery = r'''
//   query GetPetById($petID: Int!) {
//     pet(id: $petID) {
//       petID
//       owner {
//         userID
//         userName
//         email
//         // Include other user fields as needed
//       }
//       petName
//       firstName
//       lastName
//       bio
//       size
//       weight
//       gender
//       breed
//       profilePic
//       regDate
//     }
//   }
// ''';


// const String getQuestionByIdQuery = r'''
//   query GetQuestionById($questionID: Int!) {
//     question(id: $questionID) {
//       questionID
//       pet {
//         petID
//         petName
//         firstName
//         lastName
//         owner {
//           userID
//           userName
//           email
//           // Include other user fields as needed
//         }
//       questionText
//       questionDate
//       questionLike         
//     }
//   }
// ''';


// const String getAnswerByIdQuery = r'''
//   query GetAnswerById($answerID: Int!) {
//     answer(id: $answerID) {
//       answerID
//       user {
//         userID
//         userName
//         email
//         // Include other user fields as needed
//       }
//       question {
//         questionID
//         // Include other question fields as needed
//       }
//       answerText
//       answerDate
//       answerLike
//     }
//   }
// ''';
