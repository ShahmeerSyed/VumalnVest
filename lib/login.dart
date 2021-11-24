import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String CountryCodes;
  List codelist = ['+92', '+91'];
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
          title: Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, )),
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
                      child: Text('Login to your Account', textAlign: TextAlign.center, style: (TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1.2)),))
                ]
              )
              ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 16.0, top: 6),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width/6,
                    child: DropdownButton(
                        hint: Text('+234', style: TextStyle(color: Colors.black, fontSize: 14)),
                        icon: Icon(Icons.keyboard_arrow_down),
                        isExpanded: true,
                        value: CountryCodes,
                        onChanged: (newValue){
                          setState(() {
                            CountryCodes = newValue;
                          });
                        },
                        items: codelist.map((valueItem){
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        })
                            .toList()
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.5,
                    child: TextField(
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.blue[500], fontSize: 14)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 6),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width/1.08,
                    child: TextField(
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.blue[500], fontSize: 14),
                          suffixIcon: InkWell(
                              onTap: _togglePassword,
                              child: Icon(Icons.visibility))
                        ),
                      obscureText: hidden,
                    ),
                    ),
                  ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 16.0, top: 14),
              child: Row(
                textDirection: TextDirection.rtl,
                children: <Widget> [
                  Container(
                    child: Text('Forgot your password' , style: TextStyle(color: Colors.blue[500], fontSize: 14, fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1.2,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => loginscreen()),);
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
            SizedBox(height: 30,)


          ],
        ),
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      hidden = !hidden;
    });
  }
}
