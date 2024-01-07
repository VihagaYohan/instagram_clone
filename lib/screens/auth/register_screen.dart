import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/resources/auth_methods.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/utils.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final String _imageUrl =
      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  void selectImageProcess() async {
    Uint8List file = pickImage(ImageSource.gallery);
    setState(() {
      _image:
      file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Container(), flex: 2),
          // logo
          SvgPicture.asset(
            'assets/images/ic_instagram.svg',
            color: primaryColor,
            height: 64,
          ),
          SizedBox(height: 64),

          // circular widget
          Stack(
            children: [
              _image != null
                  ? CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    )
                  : CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage(_imageUrl),
                    ),
              Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: selectImageProcess,
                    icon: const Icon(Icons.add_a_photo),
                  ))
            ],
          ),

          const SizedBox(height: 24),

          TextFieldInput(
            textEditingController: _usernameController,
            hintText: 'Enter your username',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 24,
          ),

          // email textfield
          TextFieldInput(
              textEditingController: _emailController,
              hintText: "Enter your email",
              textInputType: TextInputType.emailAddress),

          const SizedBox(
            height: 24,
          ),
          // password textfield
          TextFieldInput(
            textEditingController: _passwordController,
            hintText: "Enter password",
            textInputType: TextInputType.text,
            isPass: true,
          ),
          const SizedBox(
            height: 24,
          ),

          TextFieldInput(
              textEditingController: _bioController,
              hintText: "Enter your bio",
              textInputType: TextInputType.text),

          const SizedBox(height: 24),

          // register button
          InkWell(
            onTap: () async {
              String res = await AuthMethods().signUpUser(
                  email: 'vihagayohan94@gmail.com', //_emailController.text,
                  password: 'asdfasdf', //_passwordController.text,
                  username: 'VYohan', //_usernameController.text,
                  bio: 'Developer' //_bioController.text, //file: file
                  );

              print(res);
            },
            child: Container(
              child: const Text('Register'),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  color: blueColor),
            ),
          ),

          const SizedBox(
            height: 12,
          ),
          Flexible(child: Container(), flex: 2),
          // transition to sign-up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text("Already have an account ?"),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                ),
              )
            ],
          )
        ],
      ),
    )));
  }
}
