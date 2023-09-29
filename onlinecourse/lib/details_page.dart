import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  const DetailsPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Details(title),
        ]),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String title;

  Details(this.title);

  @override
  Widget build(BuildContext context) {
    List<String> courses;
    List<String> minutes;
    switch (title) {
      case 'Flutter Developer':
        courses = [
          "Introduction to Dart Programming",
          "Flutter Set-up",
          "Flutter widgets"
        ];
        minutes = ['12 Minutes', '16 minutes', '18 minutes'];
        break;

      case 'Full Stack Developer':
        courses = [
          "Introduction to Web Development",
          "Database Fundamentals",
          "Building APIs"
        ];
        minutes = ['15 Minutes', '16 Minutes', '24 minutes'];
        break;

      case 'Backend Developer':
        courses = [
          "Introduction to Server-side Programming",
          "Database Design"
        ];
        minutes = ['16 Minutes', '12 Minutes'];
        break;
      case 'UI/UX Designer':
        courses = [
          'Introduction Design Graphic',
          'Fundamental of Design',
          'Layout Design'
        ];
        minutes = ['15 Minutes', '16 Minutes', '24 minutes'];
        break;
      case 'GRAPHIC DESIGN':
        courses = [
          'Introduction Design Graphic',
          'Fundamental of Design',
          'Layout Design'
        ];
        minutes = ['15 Minutes', '16 Minutes', '24 minutes'];
        break;
      case 'GAME DEVELOPMENT':
        courses = [
          'Introduction to Game Design',
          'Fundamental of Physic Design',
          '3D Design'
        ];
        minutes = ['25 Minutes', '23 Minutes', '25 minutes'];
        break;
      case 'MOBILE DEVELOPMENT':
        courses = [
          'Introduction to Dart',
          'Fundamental of Flutter Framework',
          'Firebase'
        ];
        minutes = ['25 Minutes', '23 Minutes', '25 minutes'];
        break;

      default:
       courses = [
          'Introduction to Dart',
          'Fundamental of Flutter Framework',
          'Firebase'
        ];
        minutes = ['25 Minutes', '23 Minutes', '25 minutes'];
        break;
    }
    return Column(
      children: [
        Container(
          width: 414,
          height: 896,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF29274F)),
          child: Stack(
            children: [
              Positioned(
                left: -2,
                top: -24,
                child: Container(
                  width: 416,
                  height: 392,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.23, -0.97),
                      end: Alignment(-0.23, 0.97),
                      colors: [Color(0xFFF4C465), Color(0xFFC63956)],
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
                ),
              ),
              Positioned(
                left: 168,
                top: 21,
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
                              colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 111,
                        child: Container(
                          width: 283,
                          height: 260,
                          decoration: ShapeDecoration(
                            color: Color(0xFF2857A9),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 14, color: Color(0xFF326AA5)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 473,
                top: -24,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(3.14),
                  child: Container(
                    width: 414,
                    height: 414,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 414,
                          height: 414,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/414x414"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 419,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 390,
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
              Positioned(
                left: 20,
                top: 477,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/45x45"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 477,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/45x45"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 68,
                top: 477,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/45x45"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 92,
                top: 477,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/45x45"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 149,
                top: 489,
                child: Text(
                  '+28K Members',
                  style: TextStyle(
                    color: Color(0xFFC9C9C9),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 325,
                top: 474,
                child: Container(
                  width: 54,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: Color(0xFF353567),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
              Positioned(
                left: 340,
                top: 486,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(children: []),
                ),
              ),
              Positioned(
                left: 20,
                top: 573,
                child: Container(
                  width: 374,
                  height: 82,
                  decoration: ShapeDecoration(
                    color: Color(0xFF3E3A6D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
             Positioned(
            left: 20,
            top: 667,
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
      for (int i = 0; i < courses.length; i++)
        SubjectCard(courses[i], minutes[i]),
    ],
  ),
),
            ],
          ),
        ),
      ],
    );
  }
}

class SubjectCard extends StatefulWidget {
  final String title;
  final String minute;

  SubjectCard(this.title, this.minute);

  @override
  _SubjectCardState createState() => _SubjectCardState(this.title, this.minute);
}

class _SubjectCardState extends State<SubjectCard> {
  final String title;
  final String minute;

  _SubjectCardState(this.title, this.minute);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 374,
          height: 82,
          decoration: ShapeDecoration(
            color: Color(0xFF3E3A6D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
          ),
      child: Stack(
      children: [
         Positioned(
                left: 20,
                top: 667,
                child: Container(
                  width: 99,
                  height: 82,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4C465),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
      Positioned(
        left: 131,
        top: 592,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
      Positioned(
        left: 130,
        top: 619,
        child: Text(
          minute,
          style: TextStyle(
            color: Color(0xFF8C8C8C),
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
       Positioned(
                left: 212,
                top: 619,
                child: Container(
                  width: 39,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFEB53A2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 221,
                top: 623,
                child: Text(
                  'Free',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 770,
                child: Container(
                  width: 116,
                  height: 62,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 116,
                        height: 62,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/116x62"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -2,
                top: 647,
                child: Container(
                  width: 133,
                  height: 133,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 133,
                        height: 133,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/133x133"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    ]),
    );
  }
}
