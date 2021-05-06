import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack And Align"),
          backgroundColor: Colors.black,
        ),
        body: Stack( //use stack to stack the widget
          children: <Widget>[
            //background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1, //making it flex size 1 : 1
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.cyan, //background left top
                        ),
                      ),
                      Flexible(
                        flex: 1, //making it flex size 1 : 1
                        child: Container(
                          color: Colors.white, //background right top
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1, //making it flex size 1 : 1
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white, //background left bottom
                        ),
                      ),
                      Flexible(
                        flex: 1, //making it flex size 1 : 1
                        child: Container(
                          color: Colors.cyan, //background right bottom
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //listview text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 40.0, right: 40, top: 10, bottom: 50), //making it have edge insets 
                        child: Text(
                          "This is a text that we are gonna fill the listview so you can see the list view still on top of the background, i would share a little story that i got from web dltk-teach here is the stoy... There was once a mother duck.  This mother duck had no children yet for none of her eggs had hatched. She waited patiently day and night for her babies to hatch.  One day, as she was sitting on her nest of eggs the mother duck felt something move beneath her. CRACK!!  CRACK!!  CRACK!!  CRACK!! Filled with happiness, the mother duck watched as, one by one, her eggs hatched.  She was so excited to lead her children to the pond and teach them all the ways of being a duck.  Unfortunately for the mother duck, one egg was left to hatch.  This egg was larger than the rest.  This egg was browner than the rest.  Her little ducks impatiently waited for two more days and nights. “I want to go to the pond, Mother,” one baby duck quacked. “Let’s go!  Let’s go!” two more quacked excitedly. But the mother duck made them all wait, for she promised herself that she would love all her children the same. At the crack of dawn on the third day of waiting, the large brown egg began to vibrate.  It shook and shook as all of the ducks watched in awe. Then suddenly:  CRAAAAACK!!! Out from the large brown egg popped a large, strange looking head of a bird that didn’t look much like a duck.  This baby’s beak was a little too long, his feathers were a little too scruffy, and his face was a little too ugly! But, nonetheless, the mother duck promised herself that she would love all her children the same. ugly ducklingShe led her children into the nearby pond and began to teach each duckling how to be a proper duck. She taught them how to quack.  Each duckling quacked. QUACK!!  QUACK!!  QUACK!!  QUACK!! The ugly duckling quacked",
                          style: TextStyle(fontSize: 30), //a story to make the listview full
                        )),
                  ],
                )
              ],
            ),
            //button
            Align(
              alignment: Alignment.bottomCenter, //or you can use Alignment(x, y), (max x or y is 1).
              child: RaisedButton(
              child: Text("Button"),
              color: Colors.amber,
              onPressed: () {},
            ))
          ],
        ),
      ),
    );
  }
}
