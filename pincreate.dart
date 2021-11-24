import 'package:flutter/material.dart';

class creatingpin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
        title: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/3.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/one.png'),),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(

                        top: 180,
                        left: 50,
                        right: 50,
                        child: Text('Login to your Account', textAlign: TextAlign.center, style: (TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17,)),))
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Positioned(

                      top: 250,
                      left: 50,
                      right: 50,
                      child: Text('Enable a 4-digit pin code to protect your account against unauthorised access. You can also use your fingerprint or Face ID to unlock the app', textAlign: TextAlign.center, style: (TextStyle(color: Colors.grey, fontSize: 14)),))
                ],
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  TextField(decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                  ),
                  ),
                  SizedBox(width:10),
                  TextField(decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                  ),),
                  SizedBox(width:10),
                  TextField(decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                  ),),
                  SizedBox(width:10),
                  TextField(decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                  ),)
                ],
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/1.2,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => creatingpin()),);
                  },
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  padding: const EdgeInsets.only(left:16, right: 16),
                  textColor: Colors.white,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[700], Colors.lightBlue, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: FractionalOffset.bottomRight,
                      stops: [0.2, 0.7, 0.9]
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),

              ),
            ],
          )
      ),

    );

  }
}
