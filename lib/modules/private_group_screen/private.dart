import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Private extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Private> {
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
            Text("Private",style: TextStyle(color: Colors.red),),
            VerticalDivider(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/group");
              },
              child: Text("Groups",style: TextStyle(color: Colors.grey),),
            ),

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
              TextFormField( decoration: InputDecoration(labelText: "Search Matches...",filled: true,fillColor: Colors.white,prefixIcon: new Padding(
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
                   child: Text("Matches",style: TextStyle(
                     fontSize: 20,
                     fontFamily: 'Proxima',
                     color: Colors.black,
                   ),
                   ),

                 ),

                ],
              ),
              Container(
                height: 85,
                child: Expanded(
                      child: Container(
                        child: ListView.builder(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                        itemCount: titles.length,
                        itemBuilder:(context,i){
                          return Card(
                            child: Container(
                              width: 230.0,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(titles[i]),
                                    subtitle: Text(subtitles[i],overflow: TextOverflow.ellipsis,),
                                    leading: Image.asset(leadings[i],height: 40,width: 40,),
                                  ),
                                ],
                              ),
                            ),
                          );

                        }

                  ),

                      )



                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                    Text(message_count,style: TextStyle(
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
                        ),
                      );
                    },


                  ),
                ),

              )

]
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

final titles = ['Bbab Mamr','Bari Mohan','Bzayer Wejho','Bchaq Mahmoum','Bhikh Chyoukh','Bchaq Mahmoum'];
final subtitles = ['how are you?','Looking good','how are you?','How are you?','Did you check my message?','Looking good'];
final leadings = ['assets/images/Layer_74.png','assets/images/Layer_75.png','assets/images/Layer_76.png','assets/images/Layer_77-xhdpi.png','assets/images/Layer_78-hdpi.png','assets/images/Layer_77-xhdpi.png'];
final messages = titles.length;
String message_count = 'Messages($messages)';
int _index = 0;

final productData = ['Discipline curl','https://sgdfgdgd/jdkjdhj.png/jashdghd',20,'akhsgdahghsgdh'];
