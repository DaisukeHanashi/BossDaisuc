import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() => runApp(const OnlineCourse());


class  OnlineCourse extends StatelessWidget {
  const OnlineCourse({super.key});

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the app bar
      backgroundColor: Color.fromARGB(255, 92, 3, 92),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
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
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
              child: Text(
                'Master Class',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: CourseList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
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
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 1.0),
              child: Text(
                'From over 80 lectures',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
             Expanded(
              child: SubCourseList(),
            ),
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
        CourseCard("Course 1"),
        CourseCard("Course 2"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
        CourseCard("Course 3"),
      ],
         ),
    );
  }
}

class CourseCard extends StatefulWidget {
  final String title;

  CourseCard(this.title);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 1.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Transform.scale(
          scale: 1.0,
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white, // Customize the text color
              fontSize: 20, // Customize the text size
            ),
          ),
        ),
      ),
    );
  }
}

class SubCourseList extends StatefulWidget{
    @override
  _SubCourseState createState() => _SubCourseState();
}


class _SubCourseState extends State<SubCourseList>{
  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
    children: <Widget>[
      RowCard("Item 1"),
      RowCard("Item 2"),
      RowCard("Item 3"),
      // Add more RowCard widgets as needed
    ],
  );
}
}

class RowCard extends StatefulWidget{
  final String title; 
  
  RowCard(this.title); 
  
  @override
  _RowCardState createState() => _RowCardState();
  
}

class _RowCardState extends State<RowCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Set the width of each row card
      height: 150, // Set the height of each row card
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue, // Customize the card's background color
      ),
      child: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white, // Customize the text color
            fontSize: 20, // Customize the text size
          ),
        ),
      ),
    );
  }
}