import 'package:activity3/LoginScreen.dart';
import 'package:flutter/material.dart';







class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      backgroundColor: const Color(0xff091A2F),),
      
      body: Text(
        "About Flutter",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 9, 26, 47),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
          children: [
            Center(
              child: Card(
                color: Color.fromARGB(255, 9, 26, 47),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 251, 183, 24)
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12))
                ),
                child: const SizedBox(
                  width: 250,
                  height: 200,
                  child: Icon(
                  Icons.account_circle,
                  size: 120,
                  color: Colors.white,

                  )
                ),
              ),
            ),
            SizedBox(height: 510),
            ListTileTheme(            
                  child: ListTile(
                  shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color.fromARGB(255, 251, 183, 24)),
                  borderRadius: BorderRadius.circular(20),
                ),
                  leading: Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
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