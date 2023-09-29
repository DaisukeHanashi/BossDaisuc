import 'package:flutter/material.dart';
import 'details_page.dart'; 

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the app bar
      backgroundColor: Color.fromARGB(255, 92, 3, 92),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Online',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
              child: Text(
                'Master Class',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            CourseList(),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
              child: Text(
                'Free online class',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
              child: Text(
                'From over 80 lectures',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
            SubCourseList(),
          ],
        ),
      ),
    );
  }
}

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Scroll horizontally
      child: Row(
        children: <Widget>[
          CourseCard("UI/UX Designer", 1),
          CourseCard("GRAPHIC DESIGN", 2),
          CourseCard("GAME DEVELOPMENT", 3),
          CourseCard("MOBILE DEVELOPMENT", 4),
        ],
      ),
    );
  }
}

class CourseCard extends StatefulWidget {
  final String title;
  final int index;

  CourseCard(this.title, this.index);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class ColorSelector extends StatelessWidget {
  final int index;
  final String title;

  ColorSelector(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    List<Color> selectedColors;
    List<Color> ovalColors;
    String subtitle;
    String subsubtitle;

    switch (index) {
      case 1:
        selectedColors = [Colors.purple, Colors.deepPurple];
        ovalColors = [Color(0xFFEE9F39), Color(0xFFE4B249)];
        subtitle = "Recommended";
        subsubtitle = "BEGINNER";
        break;
      case 2:
        selectedColors = [Colors.orange, Colors.deepOrange];
        ovalColors = [Color(0xFF2857A9), Color(0xFF326AA5)];
        subtitle = "New Class";
        subsubtitle = "MASTER";
        break;
      case 3:
        selectedColors = [Colors.blue, Color.fromARGB(255, 17, 66, 202)];
        ovalColors = [
          Color.fromARGB(255, 235, 39, 25),
          Color.fromARGB(255, 194, 42, 22)
        ];
        subtitle = "Popular";
        subsubtitle = "FULL";
        break;
      case 4:
        selectedColors = [Colors.red, Color.fromARGB(255, 196, 31, 19)];
        ovalColors = [Color(0xFF2857A9), Color(0xFF326AA5)];
        subtitle = "In-Demand";
        subsubtitle = "FULL"; 
        break;

      default:
        selectedColors = [Colors.purple, Colors.deepPurple];
        ovalColors = [Color(0xFFEE9F39), Color(0xFFE4B249)];
        subtitle = "Recommended";
        subsubtitle = "BEGINNER";
    }

    return Column(
      children: [
        Container(
          width: 246,
          height: 349,
          margin: EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 246,
                  height: 349,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.23, -0.97),
                      end: Alignment(-0.23, 0.97),
                      colors: selectedColors,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x5B3B3960),
                        blurRadius: 22,
                        offset: Offset(6, 4),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: GestureDetector(
                  onTap: (){
                  Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => DetailsPage(title: title)),
                   );
                  }
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 246,
                  height: 349,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 246,
                          height: 349,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.23, -0.97),
                              end: Alignment(-0.23, 0.97),
                              colors: selectedColors,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 192,
                        child: Container(
                          width: 195,
                          height: 179,
                          decoration: ShapeDecoration(
                            color: ovalColors[0],
                            shape: OvalBorder(
                              side: BorderSide(width: 14, color: ovalColors[1]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 70,
                child: Container(
                  width: 209,
                  height: 279,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 209,
                          height: 279,
                        ),
                      ),
                      Positioned(
                        left: -14,
                        top: 10,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: -14,
                        top: 41,
                        child: Text(
                          subsubtitle,
                          style: TextStyle(
                            color: Color(0xFFECECEC),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 15,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color(0xFFAFA8EE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F898989),
                        blurRadius: 15,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return ColorSelector(widget.title, widget.index);
  }
}

class SubCourseList extends StatefulWidget {
  @override
  _SubCourseState createState() => _SubCourseState();
}

class _SubCourseState extends State<SubCourseList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Align children to the left
      children: <Widget>[
        RowCard("Flutter Developer"),
        RowCard("Full Stack Developer"),
        RowCard("Backend Developer"),
        // Add more RowCard widgets as needed
      ],
    );
  }
}

class RowCard extends StatefulWidget {
  final String title;

  RowCard(this.title);

  @override
  _RowCardState createState() => _RowCardState(this.title);
}

class _RowCardState extends State<RowCard> {
  final String title; 

  _RowCardState(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 134,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 42,
                child: Container(
                  width: 360,
                  height: 92,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3E3A6D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 13,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 346,
                top: 73,
                child: Container(
                  width: 29,
                  height: 29,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEB53A2),
                    shape: OvalBorder(),
                  ),
                  child: GestureDetector(
                  onTap: (){
                  Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => DetailsPage(title: title)),
                   );
                  }
                  ),
                ),
              ),
              Positioned(
                left: 349,
                top: 76,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 24,
                top: 31,
                child: Container(
                  width: 117,
                  height: 84,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFB4B4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 0,
                child: Container(
                  width: 115,
                  height: 115,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/115x115"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 52,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 77,
                child: Text(
                  '8 Hours',
                  style: TextStyle(
                    color: Color(0xFF8C8C8C),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 97,
                child: Container(
                  width: 94,
                  height: 18,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      const SizedBox(width: 1),
                      Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
