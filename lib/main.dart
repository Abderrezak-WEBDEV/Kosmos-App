import 'Package:flutter/material.dart';
// import 'SocialPage.dart';
import 'Camera.dart';
import 'ConnexionView.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();//assurer l'initialisation pour facilite l'excustion
  Firebase.initializeApp();// connecter notre app à google-service


 runApp( const App());
}
class App extends StatelessWidget {
const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
class  HomePage extends StatelessWidget {
 const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello AKELMYAPP"),
          backgroundColor : Colors.black,
          leading: GestureDetector (
            onTap: (() {}),
            child: const Icon(Icons.menu),
          )
        
        ),
      body: Center(
        child: Container(
          width: 500.0,
          height:700.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/7170879/pexels-photo-7170879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(child: Text("MY APP IS THE BEST"),),
        ),
      ),
       bottomNavigationBar: BottomAppBar(
          color: Colors.black,
    // this creates a notch in the center of the bottom bar
           shape: const CircularNotchedRectangle(),
            notchMargin: 6,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {Navigator.push(
              context, MaterialPageRoute(
                builder:(context) => Camera(),
                
                )
            );},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  ),
                ],
             ),
       ),
  // implement the floating button
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder:(context) => const ConnexionView(),
                
                )
            );
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add)),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
        );
  }
}