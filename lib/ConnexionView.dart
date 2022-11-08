import 'Package:kosmos/SocialPage.dart';
import 'Package:flutter/material.dart';


class ConnexionView extends StatefulWidget {
  const ConnexionView({Key? key}) : super(key: key);

  @override
  State<ConnexionView> createState() => _ConnexionViewState();
}

class _ConnexionViewState extends State<ConnexionView> {
  @override
  Widget build(BuildContext context) {
    var email ="";
    var password ="";
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar:AppBar(
         title: const Text("Connexion"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 30.0, 
            horizontal:30.0
            ),
          width: 500.0,
          height:700.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/7170879/pexels-photo-7170879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formkey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // style: Text("Créer un compte Onlibne Contacts".toLowerCase()),
            children: [
               
              TextFormField(
                
                      decoration: InputDecoration(
                        labelText:"Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                      ),
                      validator: (value) => value!.isEmpty ? "Entrer un Email" : null,
                      onChanged: (value)=> email = value,
              ),
              const SizedBox(height:10.0),
              TextFormField(decoration: InputDecoration(
                        labelText:"Mot de passe",
                          border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(15.0)
                          ),      
                      ),
                      validator: (value) => value!.length < 8  ? "Entrer un mot de passe avec 8 caractères" : null,
                      onChanged: (value)=> password = value,
                       obscureText: true,
                ),
                    const SizedBox( height:10.0, ), 
              FlatButton(
                      onPressed: () {
                        if(_formkey.currentState!.validate()) {
                           //1000: appliquer de la logique
                        }
                      },
                      color: Colors.blue,
                      child: Text("Connecter"),
                      shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                      ),
              ),
               const SizedBox( height:10.0, ),
              FlatButton(
                      onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(
                            builder:(context) => SocialPage(),
                          ),
                       );},
                      color: Colors.yellow,
                       child: Text("Avez-vous déja un compte?"),
                      shape:  RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
          
            ],
          ),
          
        ),
      ),
    );
  }
}