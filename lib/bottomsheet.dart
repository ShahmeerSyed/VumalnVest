import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/accountdetails.dart';

class bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2.2,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("What is your country of residence?",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
            Divider(height: 15, color: Colors.white),
            Column(
              children: [
                ListTile(
                  title: Container(child:
                  InkWell(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => accountdetails()),
                  );
                  },
                      child: Text('Nigeria'))
                  ),
                  leading: Image.asset('assets/icons/Nigeria one.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Divider(height: 5, thickness: 1.5,),
                ),
                ListTile(title: Container(child:
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => accountdetails()),
                      );
                    },
                    child: Text('Kenya'))
                ),
                  leading: Image.asset('assets/icons/Kenya one.png'),
                ), Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Divider(height: 5, thickness: 1.5,),
                ),
                ListTile(title: Container(child:
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => accountdetails()),
                      );
                    },
                    child: Text('Ghana'))
                ),
                  leading: Image.asset('assets/icons/Ghana one.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
