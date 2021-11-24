import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sliderwithcarousel/bankverify.dart';

class accountdetails extends StatefulWidget {
  @override
  _accountdetailsState createState() => _accountdetailsState();
}

class _accountdetailsState extends State<accountdetails> {
  String Genders;
  List genderdd = ['Male', 'Female'];
  String Citizenships;
  List citiships = ['Pakistani', 'Indian'];
  String CountryCodes;
  List codelist = ['+92', '+91'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
        title: Text('Account Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, ),),
            backgroundColor: Colors.white,
            actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/cp.png')
            ),
    ]
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0),
              child: Flexible(child: Text('Industry regulations requires us to collect this information to verify your identity', style: TextStyle(fontSize: 15))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15,),
              child: Row(
                children: <Widget>[
                  // "Headling".h1,
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.4,
                    child: TextField(
                    decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        hintText: "First Name",
                        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                    ),
                  ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.2,
                    child: TextField(
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          hintText: "Surname",
                          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 3),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2.4,
                      child: DropdownButton(
                        hint: Text('Gender', style: TextStyle(color: Colors.black, fontSize: 12)),
                        icon: Icon(Icons.keyboard_arrow_down),
                        isExpanded: true,
                        value: Genders,
                        onChanged: (newValue){
                          setState(() {
                            Genders = newValue;
                          });
                        },
                        items: genderdd.map((valueItem){
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
                      width: MediaQuery.of(context).size.width/2.2,
                      child: TextField(
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            hintText: "Date of Birth",
                            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                        ),
                      ),
                    ),
                  ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      DropdownButton(
                        hint: Text('Citizenship', style: TextStyle(color: Colors.black, fontSize: 12)),
                        icon: Icon(Icons.keyboard_arrow_down),
                        isExpanded: true,
                        value: Citizenships,
                        onChanged: (newValue){
                          setState(() {
                            Citizenships = newValue;
                          });
                        },
                        items: citiships.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                          );
                        }
                        )
                            .toList()
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        SizedBox( width: 90,
                          child: DropdownButton(
                              hint: Text('+234', style: TextStyle(color: Colors.black, fontSize: 12)),
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
                        SizedBox(width: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2.2,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: const UnderlineInputBorder(),
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                            ),
                          ),
                        ),
                      ],
                  ),
                  SizedBox(height: 10),
                  Column(
                      children: <Widget>[
                        SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                              ),

                            )
                        )
                      ]
                  ),
                      SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[400], fontSize: 12)
                          ),
                          obscureText: true,

                        )
                      )
                    ]
                  ),
                ],
              ),
            ],
              )
            ),
        Spacer(),
            Container(
             child: Center(
               child: Text('Your information is encryption and securely transmitted using SSL', style: TextStyle(fontSize: 8, color: Colors.grey[400],)
               ),
             ),
            ),
            SizedBox(height: 7),
            Container(
              height: MediaQuery.of(context).size.height/13.5,
              width: MediaQuery.of(context).size.width/1.2,
              child: FlatButton(
                onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => bankverify()),);
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
                ),
                  borderRadius: BorderRadius.circular(5)
              ),
              ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
