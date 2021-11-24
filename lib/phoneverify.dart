import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/createpin.dart';
class phoneverify extends StatefulWidget {
  @override
  _phoneverifyState createState() => _phoneverifyState();
}

class _phoneverifyState extends State<phoneverify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          title: Text('Verify Phone Number', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                icon: Image.asset('assets/icons/cp.png')
            ),
          ]
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text('We have sent an SMS & WhatsApp message with your verification code to your phone', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0, bottom: 12.0, right: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('+234-7031234567', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18), ),),
                  Spacer(),
                  Container(
                    child: Flexible(child: Text('Change Phone Number', style: TextStyle(color: Colors.blue[500], fontWeight: FontWeight.bold))),
                  ),
                  ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: SizedBox(
                      child: TextField(
                          keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: ('Verification Code'),
                          hintStyle: TextStyle(color: Colors.blue[500]),
                          border: const UnderlineInputBorder()
                        )
                      ),
                    ),
                  ),

                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Container(

                    alignment: Alignment.topRight,
                      child: Text('Resend Code', style: TextStyle(color: Colors.blue[500], fontWeight: FontWeight.bold),)
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/10.8,
              width: MediaQuery.of(context).size.width/1.2,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => creatingpin()),);
                },
                child: Center(
                  child: Text(
                    'Verify',
                    style: TextStyle(fontSize: 13.8),
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
            SizedBox(height: 10,)
          ],
        ),

      ),
    );
  }
}
