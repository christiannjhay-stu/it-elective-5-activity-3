// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:activity3/LoginScreen.dart';
import 'package:activity3/AboutUsScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'
as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class Data {
  final String strMeal;
  final String strMealThumb;
  final String idMeal;


  Data({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal
  });

  factory Data.fromJson(Map < String, dynamic > json) {
    return Data(
      strMeal: json['strMeal'],
      strMealThumb: json['strMealThumb'],
      idMeal: json['idMeal']

    );
  }
}

class _HomeScreenState extends State < HomeScreen > {
  late String FirstName;
  late String LastName;
  late String UserImage ='';



  @override
  void initState() {


    super.initState();
    
    fetchUsers().then((value) {

      print(value[0]['name']['first']);
      print(value[0]['name']['last']);
      setState(() {
        FirstName = value[0]['name']['first'];
        LastName = value[0]['name']['last'];
        UserImage = value[0]['picture']['large'];

      });
    });
  }


  Future < List < Data >> fetchData() async {
    var url = Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body)['meals'];
      return jsonResponse.map((data) => Data.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }


  Future < List < dynamic >> fetchUsers() async {

    var result =
      await http.get(Uri.parse("https://randomuser.me/api/"));
    return jsonDecode(result.body)['results'];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: CircleAvatar(
              radius: 60,
              child: ClipOval(
                child: UserImage != null ? Image.network(UserImage) : Text("TRASDLASDKLJASDANAMSNDBAMSD")
              ),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: const Color(0xff091A2F), ),
      body: FutureBuilder < List < Data >> (
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 350,
                  
                  color: const Color(0xff091A2F),
                    child: Card(
                      
                      color: const Color(0xff091A2F),
                        child: Center(child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Container(
                              child: Text(
                                ((snapshot.data![index].idMeal + "\n")), style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              child: Image.network(snapshot.data![index].strMealThumb, height: 200, ),

                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Container(
                              child: Text(
                                ((snapshot.data![index].strMeal + "\n")), style: TextStyle(
                                  color: Colors.white
                                )
                              ),
                            ),

                          ],
                        ))
                    ),
                );
              });
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          // By default show a loading spinner.
          return const CircularProgressIndicator();
        },

      ),

      drawer: Drawer(

        backgroundColor: Color.fromARGB(255, 9, 26, 47),

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 10),
          children: [
            Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(246, 255, 208, 0)
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                color: const Color(0xff091A2F),
                  child: SizedBox(
                    width: 300,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [CircleAvatar(
                              radius: 60,
                              child: ClipOval(child: UserImage != null ? Image.network(UserImage) : Text("TRASDLASDKLJASDANAMSNDBAMSD")),
                            ),
                            //CircleAvatar
                            const SizedBox(
                                height: 40,
                              ), //SizedBox
                              Text(
                                FirstName + " " + LastName,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                            //Text
                          ],
                        ), //Column
                    ),
                    //Padding
                  ),
                //SizedBox
              ),
            ),
            SizedBox(height: 600),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.logout),
                title: const Text('Logout'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
                      return LoginScreen();
                    }));
                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Color.fromARGB(255, 9, 26, 47),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
          children: [

            SizedBox(height: 20),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.home),
                title: const Text('Home'),
                  onTap: () {

                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
            SizedBox(height: 4),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.work),
                title: const Text('Projects'),
                  onTap: () {

                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
            SizedBox(height: 4),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.document_scanner),
                title: const Text('Report'),
                  onTap: () {

                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
            SizedBox(height: 520),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                  onTap: () {

                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
            SizedBox(height: 4),
            ListTileTheme(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Icon(Icons.info),
                title: const Text('About Us'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
                      return AboutScreen();
                    }));
                  },
                  textColor: Colors.white,
                  iconColor: Colors.white,
              )
            ),
          ],
        ),
      ),
    );
  }
}