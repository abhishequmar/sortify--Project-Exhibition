import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sortify/main.dart';
import 'package:sortify/model/user_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sortify/screens/graphScreens/top_artists_screen.dart';
import 'package:sortify/screens/graphScreens/top_songs_screen.dart';
import 'login_screen.dart';

var kPrimaryAppBarColor = Color.fromARGB(150, 153, 210, 170);
var kPrimaryButtonColor = Color.fromARGB(150, 0, 200,0);
var kprimaryTextColor = Colors.green;
var ksecondaryTextColor = Colors.white;
var ktertiaryTextColor = Colors.white;
var kprimaryFontSize = 25.0;
var ksecondaryFontSize =20.0;
var ktertiaryFontSize =15.0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(


        width: MediaQuery.of(context).size.width * 0.5,
        child: ListView(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  logout(context);

                },
                child: Text("Sign Out"))

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Text("Home Page", style: TextStyle(color: kprimarygreen),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height:20 ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 10/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Image.network("https://chartdata.files.wordpress.com/2021/12/ffiar9ewyambeah-copy.png"),
              Image.network("https://www.ukeysoft.com/wp-content/uploads/2019/06/top-20-songs-spotify.jpg"),
              Image.network("https://www.italiamusicexport.com/wp-content/uploads/2022/02/spotify-scaled.jpeg"),
            ],
            // autoPlay: true,
            // viewportFraction: 1.0,
            // aspectRatio: 2.0,
          ),
          SizedBox(height: 20,),
          Container(
            child: Expanded(
              // padding: const EdgeInsets.all(13.0),
              child: GridView(
                children:[



                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                        const TopArtistsScreen(),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text('Top Artists',

                          style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                        ),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.grey, Colors.black],
                          ),
                        ),

                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                        const TopSongsScreen(),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text('Top Songs',
                            style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                        ),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.grey, Colors.black],
                          ),
                        ),
                      ),
                    ),
                  ),



                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                        child: Text('Top Songs by Region',
                          style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                      ),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.grey, Colors.black],
                          ),
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text('Graph 2',
                        style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                      ),
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.black],
                        ),
                      ),),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text('Graph 3',
                        style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                      ),
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.black],
                        ),
                      ),
                    ),
                  ),


                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text('Graph 4',
                            style: TextStyle(fontSize: ksecondaryFontSize,color: kprimarygreen),),
                        ),decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.black],
                        ),
                      ),
                      ),
                    ),
                  ),
                ],
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,),

              ),
            ),
          ),

        ],
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}