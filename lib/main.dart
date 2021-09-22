import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Contact Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Color(0xff003366);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        leading: Icon(Icons.arrow_back),
        title: Text(widget.title),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    CustomHeader(text: 'Present Address'),
                    CustomField(text: "District * "),
                    CustomField(text: "Thana * "),
                    CustomField(text: "House No / Road / Village * "),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    CustomHeader(text: 'Permanent Address'),
                    CustomField(text: "District * "),
                    CustomField(text: "Thana * "),
                    CustomField(text: "House No / Road / Village * "),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    CustomHeader(text: 'Mobile Number'),
                    CustomField(text: "Mobile No 1 "),
                    CustomButton(text: 'Add Mobile No.', icon: Icons.phone),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    CustomHeader(text: 'Email AAddress'),
                    CustomField(text: "Primary Email Address "),
                    CustomButton(text: 'Add Email Address.', icon: Icons.email),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child:   FloatingActionButton(
                  onPressed: () {  },
                  child: Icon(Icons.check
                  ),
                  backgroundColor: Colors.red,
                )
              ),
              Container(
                height: 50,
                child: Image.network("https://img.freepik.com/free-vector/modern-buy-one-get-one-free-sale-yellow-banner-design_1017-15625.jpg?size=626&ext=jpg"
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomButton({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 180),
      width: 180.0,
      height: 30.0,
      child: ElevatedButton(
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              text, style: TextStyle(color: Colors.red),),
            Icon(icon, color: Colors.red,),
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.black12),
            ),
          ),

        ),
      ),
    );
  }
}


class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all( 20),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  final String text;
  const CustomField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 5),
      child: TextField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: text,
          labelStyle: TextStyle(
            color: Color(0xff003366),
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: Colors.blue, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
                color: Colors.lightGreen, width: 1.0),
          ),
        ),
      ),
    );
  }
}