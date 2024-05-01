import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [

            Container(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return ClipOval(
                    child: Image.network(
                      'https://i.postimg.cc/PfyNYWkt/sajid.jpg',
                      width: constraints.maxWidth * 0.4,
                      height: constraints.maxWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height/40,
            ),

            const Column(
              children: [

                Text("Suaib Bin Humayun Sajid",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),

                Text("suaibsajid2000@gmail.com",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(30),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vestibulum leo eget lacus ullamcorper, quis varius nisl rutrum. Nam finibus, justo vel luctus convallis, odio urna tristique justo, et iaculis dui magna nec est. Proin id purus odio. Fusce rhoncus aliquam nisi, non egestas mi ultricies nec. Sed vitae dolor a neque lacinia ultricies. Duis sed ante tellus. Phasellus tempor dui eu lorem rhoncus, ut ultrices nisi consequat. Integer et nisi eget purus condimentum mattis. Sed pretium commodo arcu, at vestibulum odio tincidunt a. Ut hendrerit suscipit leo, eget dapibus nulla commodo eget."))

              ],
            ),


          ],
        ),
      ),


    );
  }
}

