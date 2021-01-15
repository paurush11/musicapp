import 'package:flutter/material.dart';
import 'package:hidden_drawer/Config.dart';
import 'package:hidden_drawer/Screens/background.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hidden_drawer/main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Trending.dart';

class AuthScreen extends StatefulWidget {
  static const String id = "auth";

  @override
  _AuthScreenState createState() => _AuthScreenState();
}
final _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

// ignore: missing_return
Future<User> signInUser()async{
final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
final AuthCredential authCredential = GoogleAuthProvider.credential(idToken:googleSignInAuthentication.idToken ,accessToken: googleSignInAuthentication.accessToken);
final UserCredential userCredential = await _auth.signInWithCredential(authCredential);
final User user = userCredential.user;
assert(!user.isAnonymous);
assert(await user.getIdToken()!=null);
final User currentUser = _auth.currentUser;
assert(currentUser.uid == user.uid);
return user;
}


class _AuthScreenState extends State<AuthScreen> {

    String email;
    String password;
    String mobileNo;
    User user;

    void click(){
      signInUser().then((user)=>{
        this.user = user,
        Navigator.pushNamed(context, Start.id)
      });
    }
    Widget googleLogin(){
      return OutlineButton(
          onPressed: (){
            this.click();
          },
          shape: CircleBorder(
          ),
        child: Image.asset("images/google.png", width: 50,),
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Palette.darkBlue,

        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Container(

                child: Text("POTIFY",style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ArchitectsDaughter",
                  color: Colors.white
                ),),


              ),
              SizedBox(height: MediaQuery.of(context).size.height/14,),

              Expanded(

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),

                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/12,
                          margin: EdgeInsets.only(left: 35, top: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Login",style: TextStyle(
                            fontSize: 30,
                              fontWeight: FontWeight.bold
                        ),),
                          ),),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0,bottom: 30,right: 30,top:10),
                          child: Container(

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0,10)
                              )]
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20),

                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(color: Colors.grey[200])
                                      )
                                    ),
                                    child: TextField(
                                      onChanged: (value){
                                        if(value.contains('@'))
                                          {
                                            email = value;
                                          }
                                        else{
                                          mobileNo = value;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.grey[200])
                                        )
                                    ),
                                    child: TextField(
                                      obscureText: true,
                                      onChanged: (value){
                                        password = value;

                                      },
                                      decoration: InputDecoration(

                                          hintText: "Password",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/20-20,),
                        Text("Forgot Password?",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20
                        ),),
                        SizedBox(height: MediaQuery.of(context).size.height/20-10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                try{
                                  final verifiedUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
                                  if(verifiedUser!=null){
                                    Navigator.pushNamed(context, Start.id);
                                  }
                                }catch(e){

                                print(e);
                              }},
                              child: Container(
                                width: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Palette.darkBlue
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("Login",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () async{
                                try{
                                  final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                  if(newUser!=null)
                                    {
                                      Navigator.pushNamed(context, Start.id);
                                    }
                                }catch(e){
                                  print(e);
                                }

                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Palette.darkBlue
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("New User",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/20-10,),
                        Text("Or",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20
                        ),),
                        SizedBox(height: MediaQuery.of(context).size.height/20-10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            googleLogin()
                          ],
                        ),


                      ],
                    ),
                  ),

                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
