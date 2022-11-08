import 'package:flutter/material.dart';
import 'package:kosmos/ConnexionView.dart';


class SocialPage extends StatelessWidget {
  // SocialPage({Key? key}) : super(key: key);
  var nom ="";
  var prenom ="";
  var email ="";
  var password ="";
  var confirmpassword ="";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Formulaire d'inscription",),
      ),
      body: Container(

         padding: const EdgeInsets.symmetric(
            vertical: 50.0, 
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
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Nom" ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                  ),
                  validator: (value) => value!.isEmpty ? "Entrer un nom" : null,
                  onChanged: (value)=> nom = value,
                ),
                const SizedBox( height:5.0,),

                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Prénom",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  validator: (value) => value!.isEmpty ? "Entrer un prénom" : null,
                  onChanged: (value)=> prenom = value,
                ),
                 const  SizedBox(height:5.0,),

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
                const SizedBox(height:5.0),

                TextFormField(
                  decoration: InputDecoration(
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

                TextFormField(
                  decoration: InputDecoration(
                  labelText:"Confirmer le mot de passe",
                    border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(15.0)
                    ),      
                  ),
                  validator: (value) => confirmpassword != password ? "Le mot de passe ne correspond pas" : null,
                  onChanged: (value)=> confirmpassword = value,
                    obscureText: true,
                ),
                const SizedBox( height:5.0, ),
                    
                    FlatButton(
                      onPressed: () {
                        if(_formkey.currentState!.validate()) {
                           //1000: appliquer de la logique
                        }
                      },
                      color: Colors.blue,
                      child: Text("S'inscrire"),
                      shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    const SizedBox( height:5.0,),
                    
                    FlatButton(
                      onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(
                            builder:(context) => ConnexionView(),
                            
                            ),
                       );},
                      color: Colors.yellow,
                       child: Text("Connexion"),
                      shape:  RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ], //children
          ),
        ), 
      ),
    );
  }
}