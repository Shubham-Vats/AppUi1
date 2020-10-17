import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            
            MyAppBar(),
            
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Discover\nworld with us!",
                  style: introScreenTextStyle.copyWith(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    height: 1,
                  ),
                )
              ),
            ),

            MySearchBar(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.yellow,
                height: 70,
                width: double.infinity,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    MyListBarIcon(listIcon: Icon(Icons.airplanemode_on_sharp,size: 35,color: Colors.white,)),
                    MyListBarIcon(listIcon: Icon(Icons.house,size: 35,color: Colors.white,)),
                    MyListBarIcon(listIcon: Icon(Icons.camera,size: 35,color: Colors.white,)),
                    MyListBarIcon(listIcon: Icon(Icons.bus_alert,size: 35,color: Colors.white,)),
                    MyListBarIcon(listIcon: Icon(Icons.car_rental,size: 35,color: Colors.white,)),
                    MyListBarIcon(listIcon: Icon(Icons.meeting_room,size: 35,color: Colors.white,)),
                  ]
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                //alignment: Alignment.center,
                height: 50,
                //width: 500,
                //color: Colors.tealAccent,
                child: ListView(
                  // physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyListBarText(listText: Text("New",style: introScreenTextStyle.copyWith(color: Colors.black,fontSize:18),),),
                    MyListBarText(listText: Text("Most viewed",style: introScreenTextStyle.copyWith(color: Colors.redAccent,fontSize:18),),),
                    MyListBarText(listText: Text("Most tours",style: introScreenTextStyle.copyWith(color: Colors.black,fontSize:18),),),
                    MyListBarText(listText: Text("All",style: introScreenTextStyle.copyWith(color: Colors.black,fontSize:18),),),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyScrollableImageSection(imgUrl: "https://images.unsplash.com/photo-1509005395573-2d973751f2b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",imageText: "Twin Tower",imageSubText: "France",myTag: 'Story-1',),
                    MyScrollableImageSection(imgUrl: "https://images.unsplash.com/photo-1578152678928-ae77977377f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",imageText: "Burj Khalifa",imageSubText: "Dubai",myTag: 'Story-2',),
                    MyScrollableImageSection(imgUrl: "https://images.unsplash.com/photo-1578436154268-3af1afda15f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=282&q=80",imageText: "Tower",imageSubText: "South Afriaca",myTag: 'Story-3',),
                    MyScrollableImageSection(imgUrl: "https://images.unsplash.com/photo-1582817398429-5bec5def46ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",imageText: "Astofer",imageSubText: "Argentina",myTag: 'Story-4',),
                  ]
                ),
              ),
            )

          ]
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 30),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: (){
                  print("Profile Piture!!");
                  _showProfileImage(context);
                },
              child: Hero(
                tag: 'Profile-Photo',
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.redAccent
                  )
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.menu), 
              onPressed: () => print("Settings Checked!!")
            )
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  void _showProfileImage(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => SafeArea(
          child: Scaffold(
            body: Center(
              child: Hero(
                tag: 'Profile-Photo',
                child: Container(
                  color:Colors.redAccent,
                ),
              )
            ),
          ),
        )
      )
    );
  }
}

class MySearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          height: 60,
          width: double.infinity,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Expanded(
                  child: TextField(
                    autofocus: false,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      hintText: "Search Something...",
                      hintStyle: introScreenTextStyle.copyWith(
                        fontSize:20,
                        color: Colors.grey[500]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                  onTap: () => print("Searching..."),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent,
                    ),
                    height:60,
                    width:60,
                    child: Icon(Icons.search,color:Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class MyListBarIcon extends StatelessWidget {
  
  final Icon listIcon;
  
  const MyListBarIcon({Key key, this.listIcon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.redAccent,
        ),
        width: 70,
        child: listIcon,
      ),
    );
  }
}

// ignore: must_be_immutable
class MyListBarText extends StatelessWidget {

  var listText;

  MyListBarText({Key key, this.listText}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          alignment: Alignment.center,
          width: 110,
          //height: 50,
          child: listText,
        ),
    );
  }
}

class MyScrollableImageSection extends StatelessWidget {

  final String imgUrl;
  final imageText;
  final imageSubText;
  final myTag;

  const MyScrollableImageSection({Key key, this.imgUrl, this.imageText, this.imageSubText, this.myTag}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => {
            print("ImageTapped!!!"),
            _showStories(context),
          },
          child: Hero(
            tag: myTag,
            child: Container(
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imgUrl)
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(imageText,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_city,color: Colors.redAccent),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(imageSubText,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ]
                    )
                  ]
                ),
              ),
            ),
          ),
        ),
      );
  }

  void _showStories(BuildContext context)
  {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: myTag,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover
                  )
                ),
                ),
            )
          ),
        )
      ),
    );
  }
}