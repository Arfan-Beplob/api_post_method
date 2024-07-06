import 'package:api_post_method/provider/user_provider.dart';
import 'package:api_post_method/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
TextEditingController nameControler =TextEditingController();
TextEditingController passwordControler =TextEditingController();
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const   Text("API Post Method "),
        centerTitle: true,
      ),
      body: Consumer<UserProvider>(
        builder: (context, Provider, child) {
          return  Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CastomTextField(
                    controller: nameControler,
                    hint: 'Enter Your Name',
                    prefixicon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CastomTextField(
                    controller: passwordControler,
                    hint: 'Enter Your password',
                    prefixicon: Icons.password,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: Provider.postData, child: const Text('Sing-Up',style: TextStyle(fontSize: 40),))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
