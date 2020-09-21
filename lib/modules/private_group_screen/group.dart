import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class Group extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Group> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return MaterialApp(
      theme:ThemeData(
          fontFamily: 'Proxima',
          appBarTheme: AppBarTheme(
              color: Colors.white
          )
      ),
      home: Scaffold(
        appBar: AppBar(
            title:IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/private");
                    },
                    child: Text("Private",style: TextStyle(color: Colors.grey),),
                  ),
                  VerticalDivider(),
                  Text("Groups",style: TextStyle(color: Colors.red),),
                ],
              )
              ,)
        ),

        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8,right: 12,top: 12,bottom: 12),
            child: Column(
              children: <Widget>[
                TextFormField( decoration: InputDecoration(labelText: "Search Groups...",filled: true,fillColor: Colors.white,prefixIcon: new Padding(
                  padding: const EdgeInsets.only( top: 15, left: 5, right: 0, bottom: 15),
                  child: new SizedBox(
                    height: 4,
                    child: Image.asset("assets/images/Search.png"),
                  ),
                ),
                ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("View Popular Group Chats around You.",style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Proxima',
                        color: Colors.black,
                      ),
                      ),

                    ),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                      Text(groups_count,style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Arial',
                        color: Colors.red,
                      ),
                      ),

                    ),


                  ],
                ),

                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: ListTile(
                            title: Text(titles[index]),
                            subtitle: Text(subtitles[index],overflow: TextOverflow.ellipsis,),
                            leading: Image.asset(leadings[index],height: 40,width: 40,),
                            trailing: Text(trailing[index],style: TextStyle(color: Colors.red),),
                          ),
                        );
                      },


                    ),
                  ),

                )


              ],
            ),

          ),

        ),
        bottomNavigationBar: Row(
          children: <Widget>[
            BuildNavItem(Image.asset("assets/images/Home-xxhdpi.png"),0),
            BuildNavItem(Image.asset("assets/images/Fire-xxxhdpi.png"),1),
            BuildNavItem(Image.asset("assets/images/Yin-Yan-xxxhdpi.png"),2),
            BuildNavItem(Image.asset("assets/images/Target-xxxhdpi.png"),3),
            BuildNavItem(Image.asset("assets/images/Profile_Icon-xxxhdpi.png"),4)
          ],
        ),
      ),
    );

  }

  Widget BuildNavItem(Image image, int index) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedItem = index;
        });
      },
      child: Container(
          height: 70,
          width: size.width/5,
          decoration: index == _selectedItem ? BoxDecoration(
            border: Border(
                bottom: BorderSide(width:3,color: Colors.redAccent)
            ),
            gradient: LinearGradient(
                colors: [
                  Colors.redAccent.withOpacity(0.2),
                  Colors.redAccent.withOpacity(0.001)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),
          ) : BoxDecoration(
              color: Colors.white
          ),
          child: Container(
            padding: index != 2 ? EdgeInsets.all(5.0) : EdgeInsets.all(0),
            margin: index != 2 ? EdgeInsets.all(15.0) : EdgeInsets.all(0),
            decoration: BoxDecoration(
              //color: Colors.black38,
              //border: Border.all(color:Colors.grey[300], width: 3,style: BorderStyle.solid),
                boxShadow: index != 2 ? [
                  BoxShadow(
                    color: Colors.grey[400],
                    offset: Offset(1.0,1.0),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Colors.grey[100],
                    offset: Offset(0, 0),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                ] : [],
                //borderRadius: BorderRadius.all(Radius.circular(40.0))
                shape: BoxShape.circle
            ),
            child: image,
          )
      ),
    );
  }
}

final titles = ['Bhbab Mame','Bari Mohan','Bzayer Wejho','Bchaq Mahmoum','Bhikh Chyoukh','Bhbab Mamar','Bari Mohan','Bzayer Wejho','Bchaq Mahmoum','Bhikh Chyoukh'];
final subtitles = ['how are you?','Looking good','how are you?','How are you?','Did you check my message?','how are you?','Looking good','how are you?','How are you?','Did you check my message?'];
final leadings = ['assets/images/Layer_74.png','assets/images/Layer_75.png','assets/images/Layer_76.png','assets/images/Layer_77-xhdpi.png','assets/images/Layer_78-hdpi.png','assets/images/Layer_74.png','assets/images/Layer_75.png','assets/images/Layer_76.png','assets/images/Layer_77-xhdpi.png','assets/images/Layer_78-hdpi.png'];
final messages = titles.length;
String groups_count = 'Your Groups($messages)';
final trailing = ["(30 members)","(27 members)","(64 members)","(17 members)","(32 members)","(30 members)","(27 members)","(64 members)","(17 members)","(32 members)",];