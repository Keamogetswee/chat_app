import 'package:firebase_auth/firebase_auth.dart';

Future<User?> createAccount(String name, String email, String password) async{
  
  FirebaseAuth auth = FirebaseAuth.instance;
  
  try{
    
    User? user = (await auth.createUserWithEmailAndPassword(email: email, password: password))
        .user;
   if (user != null) {
     print("Your login was Successful");
     return user;
   } else {
     print("Account creation was not successful, please check your details and try again");
     return user;
   }
    }
  catch(e){
    print(e);
    return null;
  }
}

Future<User> LogIn(String email, String password) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  
  try{
    User? user = (await auth.signInWithEmailAndPassword(
        email: email, password: password))
        .user;
    if (user != null) {
      print("Your Login was Successful");
    } else {
      print("Login Unsuccessful");
    }
  } catch (e) {
    print(e)
  }
}