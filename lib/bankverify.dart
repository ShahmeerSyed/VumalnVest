import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/phoneverify.dart';

class bankverify extends StatefulWidget {
  @override
  _bankverifyState createState() => _bankverifyState();
}

class _bankverifyState extends State<bankverify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: Text('Bank Verification Number', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),),
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                  icon: Image.asset('assets/icons/cp.png')
              ),
            ]
        ),
      body: Container(
        height: MediaQuery.of(context).size.height/1.07,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Flexible(child: Text('Industry regulation requires us to collect this information to verify your identity', style: TextStyle(fontSize: 15))),
            ),
            SizedBox(height: 90),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    child:TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: "It's an 11-digit number",
                          hintStyle: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w400)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text("Can't remember Your BVN?", style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600), textAlign: TextAlign.right,),
                      ),

                    ],
                  ),

                )
                  ],
                ),
            Spacer(),
            Container(
              child: Center(
                child: Text('Your information is encryption and securely transmitted using SSL', style: TextStyle(fontSize: 8, color: Colors.grey[400])
                ),
              ),
            ),

            SizedBox(height: 7),
            Container(
              height: MediaQuery.of(context).size.height/13.5,
              width: MediaQuery.of(context).size.width/1.2,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => phoneverify())
                  );
                },
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 13.8),
                  ),
                ),
                padding: const EdgeInsets.only(left:16, right:16),
                textColor: Colors.white,
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[700], Colors.lightBlue, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: FractionalOffset.bottomRight,
                      stops: [0.2, 0.7, 0.9]
                  ), borderRadius: BorderRadius.circular(5)
              ),
            ),
            SizedBox(height: 20,),
              ],
            ),
      )
        );
  }
}
