import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';



void main()=>runApp(image());

// class rendaMain extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text("",style: TextStyle(
//                   fontSize: 100
//                 ),),
//                 Text("10s",style: TextStyle(
//                     fontSize: 20
//                 ),),
//                 Text("60s",style: TextStyle(
//                     fontSize: 20
//                 ),),
//                 Text("endless",style: TextStyle(
//                     fontSize: 20
//                 ),),
//               ],
//             ),
//             Text("Renda \nMachine",
//             textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 45
//               ),
//             ),
//             TextField(
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 RaisedButton(
//                   child:Text("10s"),
//                   onPressed: (){},
//                 ), RaisedButton(
//                   child:Text("60s"),
//                   onPressed: (){},
//                 ), RaisedButton(
//                   child:Text("endless"),
//                   onPressed: (){},
//                 ),
//               ],
//             ),
//             RaisedButton(child: Text("PLAY"),onPressed: (){},)
//           ],
//         ),
//       ),
//
//     );
//   }
// }
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(resizeToAvoidBottomPadding: false,
        body: new Stack(
          children: <Widget>[
            new Image.asset("cosmo.jpg",
              fit:BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            //10sと表示させる
            new Align(
              alignment: new Alignment(-0.9, -0.9),
              child: Container(
                child: new Text("10s",
                  style: new TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),
            //60sと表示させる
            new Align(
              alignment: new Alignment(-0.1, -0.9),
              child: Container(
                child: new Text("60s",
                  style: new TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),
            //ENDLESSと表示させる
            new Align(
              alignment: new Alignment(0.9, -0.9),
              child: Container(
                child: new Text("ENDLESS",
                  style: new TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),),

            //RendaMachineと表示させる
            new Align(
              alignment: new Alignment(0.1, -0.8),
              child: Container(
                    child: new Text("Renda\nMachine",
                      style: new TextStyle(
                          fontSize: 55,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
              ),),
            //名前を入力する為のテキストフィールドを作成
            new Align(
              alignment: new Alignment(0, -0.4),
                    child:Container(
                      child: new TextField(
                        style: new TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),

                        ),

                      ),
                    ),

            //10sボタンを作成する
            new Align(
              alignment: new Alignment(-0.9, 0.8),
              child: Container(
                  margin: new EdgeInsets.only(bottom: 400),
                  child: new RaisedButton(
                    onPressed:(){
                      print("pressed");
                    },
                    child: new Text("10s",
                      style: new TextStyle(
                          fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.white.withOpacity(0.0),
                    shape: Border(
                      top:BorderSide(color: Colors.red),
                      left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                    ),
                  )
              ),),
            //60sボタンを作成する
            new Align(
              alignment: new Alignment(-0.1, 0.8),
              child: Container(
                margin: new EdgeInsets.only(bottom: 400),
                  child: new RaisedButton(
                    onPressed:(){
                      print("pressed");
                    },
                  child: new Text("60s",
                  style: new TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                    color: Colors.white.withOpacity(0.0),
                    shape: Border(
                      top:BorderSide(color: Colors.red),
                      left:BorderSide(color: Colors.red),
                      right:BorderSide(color: Colors.red),
                      bottom:BorderSide(color: Colors.red),
                    ),

                )
              ),),
           //ENDLESSボタンを作成する
            new Align(
              alignment: new Alignment(0.9, 0.8),
              child: Container(
                  margin: new EdgeInsets.only(bottom: 400),
                  child: new RaisedButton(
                    onPressed:(){
                      print("pressed");

                    },
                    child: new Text("ENDLESS",
                      style: new TextStyle(
                          fontSize: 20,
                        color: Colors.white,
                      ),
                    ),color: Colors.white.withOpacity(0.0),
                    shape: Border(
                      top:BorderSide(color: Colors.red),
                      left:BorderSide(color: Colors.red),
                      right:BorderSide(color: Colors.red),
                      bottom:BorderSide(color: Colors.red),
                    ),
                  )
              ),),
            //PLAYボタンを作成する
            Play_Button(),
        //画面左下の表示を作成する
            new Align(
              alignment: new Alignment(-0.9,0.9),
              child: Container(
                    child: const Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'FONT:\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: 'Isurus Labs\n',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),),
                          TextSpan(text: 'Grand Chaos Productions\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: '         \n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: 'Icon:\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: 'Yukichi\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: '            \n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: 'SPECIAL THANKS:\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: 'Yukichi,@real_onesc\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: '          \n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          TextSpan(text: '(C)2018 sinProject lnc\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),

                        ]
                      ),
                    ),

              ),),

          ],
        ),
      ),
    );
  }
}

class Play_Button extends StatelessWidget {
  const Play_Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: new Alignment(0.1, 0.8),
      child: Container(
          margin: new EdgeInsets.only(bottom: 300),
          child: new RaisedButton(
            onPressed:(){
              //print("pressed");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>NextPage(),
                )
              );
            },
            child: new Text("PLAY!",
              style: new TextStyle(
                  fontSize: 45,
                color: Colors.white,
              ),
            ),color: Colors.white.withOpacity(0.0),
            shape: Border(
            top:BorderSide(color: Colors.red),
            left:BorderSide(color: Colors.red),
            right:BorderSide(color: Colors.red),
            bottom:BorderSide(color: Colors.red),
          ),
          )
      ),);
  }
}
//実際にゲームをする画面を作成する　動的なWidgetを作る
class NextPage1 extends StatefulWidget {
  @override
  _NextPage1State createState() => _NextPage1State();
  //var horizontal_position=<double>[];


}

class _NextPage1State extends State<NextPage1> {
  @override
  //ここで状態を管理する
  Widget build(BuildContext context) {
    var horizontal_position1=[-0.9,-0.3,0.3,0.9];
    var vertical_direction=0.6;
    int count=0;
    Widget build(BuildContext context) {
      return MaterialApp(

        home: new Scaffold(
          body: new Stack(

              children: <Widget>[
                new Image.asset("CatCosmo.jpg",
                  fit:BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                //QUITボタンを作成する
                new Align(

                  alignment: new Alignment(0.9, -0.7),

                  child: Container(
                    height: 60,
                    width: 100,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        Navigator.pop(context);
                        //ボタンを押したときの処理を記述する

                      },
                      child: new Text("QUIT",
                        style: new TextStyle(
                          fontSize: 20,
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                //連打された回数を表示する
                //空白のボタンを作成する　　4×4

                new Align(
                  alignment: new Alignment(-0.9, 0.6),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      //ボタンが押されたときの処理を書く
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),
                ),
                new Align(
                  alignment: new Alignment(-0.3, 0.6),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        count+=1;
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.3, 0.6),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.9, 0.6),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(-0.9, 1.5),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(-0.3, 1.5),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.3, 1.5),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.9, 1.5),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(-0.9, 2.4),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),
                ),
                new Align(
                  alignment: new Alignment(-0.3, 2.4),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.3, 2.4),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.9, 2.4),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(-0.9, 3.3),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(-0.9, 3.3),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),
                ),
                new Align(
                  alignment: new Alignment(-0.3, 3.3),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.3, 3.3),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),

                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                new Align(
                  alignment: new Alignment(0.9, 3.3),
                  child: Container(
                    height: 100,
                    width: 80,
                    margin: new EdgeInsets.only(bottom: 400),
                    child: new RaisedButton(
                      onPressed:(){
                        print("pressed");
                      },

                      child: new Text("　　　",
                        style: new TextStyle(
                            fontSize: 20
                        ),
                      ),color: Colors.white.withOpacity(0.0),
                      shape: Border(
                        top:BorderSide(color: Colors.red),
                        left:BorderSide(color: Colors.red),
                        right:BorderSide(color: Colors.red),
                        bottom:BorderSide(color: Colors.red),
                      ),
                    ),

                  ),

                ),
                //カウントした回数を入れるテキストボックスを作成する
                new Align(alignment: new Alignment(0.3, 0.6),
                  child:  new Text(  '$count',
                    style: new TextStyle(
                      fontSize: 20,
                    ),

                  ),

                )
              ]

          ),
        ),

      );

    }
    return Scaffold();
  }
}

/*
class NextPage extends StatelessWidget {
  @override
  //var horizontal_position=<double>[];
  var horizontal_position1=[-0.9,-0.3,0.3,0.9];
  var vertical_direction=0.6;
  int count=0;
  Widget build(BuildContext context) {
    return MaterialApp(

      home: new Scaffold(
        body: new Stack(

          children: <Widget>[
        new Image.asset("CatCosmo.jpg",
          fit:BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
            //QUITボタンを作成する
            new Align(

              alignment: new Alignment(0.9, -0.7),

              child: Container(
                height: 60,
                width: 100,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    Navigator.pop(context);
                    //ボタンを押したときの処理を記述する

                  },
                  child: new Text("QUIT",
                    style: new TextStyle(
                        fontSize: 20,
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            //連打された回数を表示する
    //空白のボタンを作成する　　4×4

            new Align(
              alignment: new Alignment(-0.9, 0.6),
              child: Container(
                height: 100,
                  width: 80,
                  margin: new EdgeInsets.only(bottom: 400),
                  child: new RaisedButton(
                    //ボタンが押されたときの処理を書く
                    onPressed:(){
                      print("pressed");
                    },

                    child: new Text("　　　",
                      style: new TextStyle(
                          fontSize: 20
                      ),
                    ),color: Colors.white.withOpacity(0.0),

                    shape: Border(
                      top:BorderSide(color: Colors.red),
                      left:BorderSide(color: Colors.red),
                      right:BorderSide(color: Colors.red),
                      bottom:BorderSide(color: Colors.red),
                    ),
                  ),

              ),
            ),
            new Align(
              alignment: new Alignment(-0.3, 0.6),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    count+=1;
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.3, 0.6),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.9, 0.6),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(-0.9, 1.5),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(-0.3, 1.5),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.3, 1.5),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.9, 1.5),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(-0.9, 2.4),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),
            ),
            new Align(
              alignment: new Alignment(-0.3, 2.4),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.3, 2.4),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.9, 2.4),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(-0.9, 3.3),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(-0.9, 3.3),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),
            ),
            new Align(
              alignment: new Alignment(-0.3, 3.3),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.3, 3.3),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),

                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
            new Align(
              alignment: new Alignment(0.9, 3.3),
              child: Container(
                height: 100,
                width: 80,
                margin: new EdgeInsets.only(bottom: 400),
                child: new RaisedButton(
                  onPressed:(){
                    print("pressed");
                  },

                  child: new Text("　　　",
                    style: new TextStyle(
                        fontSize: 20
                    ),
                  ),color: Colors.white.withOpacity(0.0),
                  shape: Border(
                    top:BorderSide(color: Colors.red),
                    left:BorderSide(color: Colors.red),
                    right:BorderSide(color: Colors.red),
                    bottom:BorderSide(color: Colors.red),
                  ),
                ),

              ),

            ),
          //カウントした回数を入れるテキストボックスを作成する
          new Align(alignment: new Alignment(0.3, 0.6),
          child:  new Text(  '$count',
          style: new TextStyle(
            fontSize: 20,
          ),

          ),

          )
          ]

        ),
    ),

);

  }
}
*/







