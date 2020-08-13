import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: " Object Between Two Column",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Object Between Two Column", style: TextStyle( color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // checking with scrolll
        child: Stack(
          // any widget you insert inside the stack it will appear top of corner where stack is started
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              // position is to specified where you can set the widget
              right: 10,
              top: 175, // this is 175 because in stack first column height is  200 and button height 50 i will show button in between 2 columns
              // so button height divide by 2  50/2 = 25
              // and substract with column height 200-25 = 175
              // and other widget you can add in secound column
              child: ButtonTheme(
                  minWidth: 50.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: Text("+" ,style: TextStyle( color: Colors.white)),
                    onPressed: () {},
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
