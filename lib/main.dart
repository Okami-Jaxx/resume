// import 'dart:html';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// final Uri _urlFB = Uri.parse('https://flutter.dev');
// final Uri _urlIG = Uri.parse('https://flutter.dev');
// final Uri _urlgit = Uri.parse('https://flutter.dev');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Resume'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> pic = [''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  'Over 8+ years of experience and web development and 5+ years of experience in mobile applications development'),
            ),
            _buildTitle('Skills'),
            SizedBox(
              height: 10.0,
            ),
            _buildSkillRow('WordPress', 0.75),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow('Laravel', 0.6),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow('React JS', 0.7),
            SizedBox(
              height: 5.0,
            ),
            _buildSkillRow('Flutter', 0.5),
            SizedBox(
              height: 20.0,
            ),
            _buildTitle('Experience'),
            SizedBox(
              height: 1.0,
            ),
            _buildExperienceRow(
                company: 'GID thailand',
                position: 'Wordpress Developer',
                duration: '2021 - 2022'),
            _buildTitle('Education'),
            _buildExperienceRow(
                company: 'Lampang Technical College',
                position: 'Diploma technique computer',
                duration: '2019 - 2020'),
            _buildExperienceRow(
                company: 'Lampang Technical College',
                position: 'Vocational technique computer',
                duration: '2015 - 2018'),
            _buildTitle('Socials'),
            SizedBox(
              height: 5.0,
            ),
            _buildSocialsIconRow(),
          ],
        ),
      ),
    );
  }

  Row _buildSocialsIconRow() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.facebookF),
          iconSize: 33.0,
          color: Colors.indigo,
          onPressed: () => {},
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          iconSize: 40.0,
          color: Colors.pink,
          icon: Icon(FontAwesomeIcons.instagram),
          onPressed: () => {},
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          iconSize: 40.0,
          color: Colors.grey,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () => {},
        ),
      ],
    );
  }

  // Future<void> _launchUrl(String url) async {
  //   if (!await launchUrl(url)) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  ListTile _buildExperienceRow(
      {String company = '', String position = '', String duration = ''}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 1.0, left: 10.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 10.0,
          color: Colors.black87,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
      ),
      subtitle: Text('$position ($duration)'),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 16.0,
        ),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 80.0,
          child: Image.network(
              'https://www.alleycat.org/wp-content/uploads/2019/03/FELV-cat.jpg'),
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Jitrakarn Intharawijit',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('Full Stack Developer'),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  '518/26 Amphoe Mueang Chiang Mai',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
