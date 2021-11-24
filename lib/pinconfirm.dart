import 'package:flutter/material.dart';

class pinconfirming extends StatefulWidget {
  @override
  _pinconfirmingState createState() => _pinconfirmingState();
}

class _pinconfirmingState extends State<pinconfirming> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
        title: Text('Create Pin', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/one.png'),),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(

                      top: 160,
                      left: 50,
                      right: 50,
                      child: Text('Confirm your Pin Code', textAlign: TextAlign.center, style: (TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,  letterSpacing: 0.6)),))
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 75, right: 75),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 35,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder()
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder()
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder()
                        ),
                      ),
                    ),
                    Container(
                      width: 35,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder()
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Switch(
                          value: state,
                          onChanged: (bool s){
                            setState(() {
                              state = s;
                            });
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Use Fingerprint/Face ID'
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/16,
              width: MediaQuery.of(context).size.width/1.2,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => pinconfirming())
                  );
                },
                child: Center(
                  child: Text(
                    'Enable Security',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                ),
                padding: const EdgeInsets.only(left: 16, right: 16),
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
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
