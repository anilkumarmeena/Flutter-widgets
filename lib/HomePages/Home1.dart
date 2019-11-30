import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.grey[200],
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.only(top: 60.0, left: 10.0, bottom: 60.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(25.0),
                            bottomRight: const Radius.circular(25.0)),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFFFFE5CE),
                              Color(0xFFFF8A78),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.20, 1.2],
                            tileMode: TileMode.mirror),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/logo.png',
                            height: 50,
                          ),
                          SizedBox(height: 30,)
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        width: double.maxFinite,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 6.0),
                              blurRadius: 20.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                  color: Color(0xffFFE2EE),
                                  borderRadius: BorderRadius.only(topLeft: const Radius.circular(20.0),bottomLeft: const Radius.circular(20.0)),
                                ),
                                  height: double.maxFinite,
                                  child: Center(child: Text('I want to learn'))),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.maxFinite,
                                  color: Colors.white,
                                  child: Text(''))
                              ),
                              IconButton(
                                onPressed: (){

                                },
                                icon: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.purple,
                                  size: 25,
                                ),
                            )
                            ],
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Test Series',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 25),
                          ),
                           Container(
                            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)),
                              border: Border.all(color: Colors.black26, width: 2.0),
                            ),
                            child: InkWell(
                                  child: Text(
                                      "View all",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontFamily: "WorkSansBold"),
                                    ),
                                  onTap: () {
                                   
                                  }),
                           ),
                        ],
                      ),
                    ),

                    Container(
                      height: 220,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            onTap: (){
                            //   Navigator.of(context).push(
                            //     new MaterialPageRoute(builder: (BuildContext context) {
                            //   return TestHome();
                            // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 130,
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFE5288),
                                        borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(25.0),
                                      bottomRight: const Radius.circular(25.0),
                                      topLeft: const Radius.circular(25.0)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/jeemain.png',
                                                height: 60,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'JEE MAIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '10 tests',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
                                      child: Image.asset(
                                          'assets/chain.png',
                                          height: 130,
                                        ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                       Icon(Icons.favorite_border,size: 20,color: Colors.red,),
                                       Text(
                                          ' 200',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 16),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          InkWell(
                            onTap: (){
                            //   Navigator.of(context).push(
                            //     new MaterialPageRoute(builder: (BuildContext context) {
                            //   return TestHome();
                            // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 130,
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFE5288),
                                        borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(25.0),
                                      bottomRight: const Radius.circular(25.0),
                                      topLeft: const Radius.circular(25.0)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/jeemain.png',
                                                height: 60,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'JEE MAIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '10 tests',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
                                      child: Image.asset(
                                          'assets/chain.png',
                                          height: 130,
                                        ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                       Icon(Icons.favorite,size: 20,color: Colors.red,),
                                       Text(
                                          ' 100',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 16),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                            //   Navigator.of(context).push(
                            //     new MaterialPageRoute(builder: (BuildContext context) {
                            //   return TestHome();
                            // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 130,
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFE5288),
                                        borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(25.0),
                                      bottomRight: const Radius.circular(25.0),
                                      topLeft: const Radius.circular(25.0)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/jeemain.png',
                                                height: 60,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'JEE MAIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '10 tests',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
                                      child: Image.asset(
                                          'assets/chain.png',
                                          height: 130,
                                        ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                       Icon(Icons.favorite_border,size: 20),
                                       Text(
                                          '200',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 16),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                            //   Navigator.of(context).push(
                            //     new MaterialPageRoute(builder: (BuildContext context) {
                            //   return TestHome();
                            // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 130,
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFE5288),
                                        borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(25.0),
                                      bottomRight: const Radius.circular(25.0),
                                      topLeft: const Radius.circular(25.0)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/jeemain.png',
                                                height: 60,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'JEE MAIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '10 tests',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
                                      child: Image.asset(
                                          'assets/chain.png',
                                          height: 130,
                                        ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                       Icon(Icons.favorite_border,size: 20),
                                       Text(
                                          '200',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 16),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                            //   Navigator.of(context).push(
                            //     new MaterialPageRoute(builder: (BuildContext context) {
                            //   return TestHome();
                            // }));
                            },
                            child: Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 130,
                                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                        color: Color(0xffFE5288),
                                        borderRadius: new BorderRadius.only(
                                      bottomLeft: const Radius.circular(25.0),
                                      bottomRight: const Radius.circular(25.0),
                                      topLeft: const Radius.circular(25.0)),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Image.asset(
                                                'assets/jeemain.png',
                                                height: 60,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'JEE MAIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 18),
                                          ),
                                          Text(
                                            '10 tests',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 15),
                                      transform: Matrix4.translationValues(-4.0, 0.0, 0.0),
                                      child: Image.asset(
                                          'assets/chain.png',
                                          height: 130,
                                        ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10,right: 45),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                       Icon(Icons.favorite_border,size: 20),
                                       Text(
                                          '200',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 16),
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Quick Test',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 25),
                          ),
                           Container(
                            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)),
                              border: Border.all(color: Colors.black26, width: 2.0),
                            ),
                            child: InkWell(
                                  child: Text(
                                      "View all",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontFamily: "WorkSansBold"),
                                    ),
                                  onTap: () {
                                   
                                  }),
                           ),
                        ],
                      ),
                    ),

                  Container(
                      height: 180,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 130,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffFE5288),
                              borderRadius: new BorderRadius.all(const Radius.circular(20.0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                    'assets/jeemain.png',
                                    height: 60,
                                  ),
                                Text(
                                  'JEE MAIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 130,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              color: Color(0xffFE5288),
                              borderRadius: new BorderRadius.all(const Radius.circular(20.0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                    'assets/jeemain.png',
                                    height: 60,
                                  ),
                                Text(
                                  'JEE MAIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 130,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffFE5288),
                              borderRadius: new BorderRadius.all(const Radius.circular(20.0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                    'assets/jeemain.png',
                                    height: 60,
                                  ),
                                Text(
                                  'JEE MAIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 130,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                             margin: EdgeInsets.symmetric(horizontal: 30),
                            decoration: BoxDecoration(
                              color: Color(0xffFE5288),
                              borderRadius: new BorderRadius.all(const Radius.circular(20.0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                    'assets/jeemain.png',
                                    height: 60,
                                  ),
                                Text(
                                  'JEE MAIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
  }