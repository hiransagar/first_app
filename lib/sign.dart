import 'package:flutter/material.dart';

class NewAppSignup extends StatefulWidget {
  const NewAppSignup({Key? key}) : super(key: key);

  @override
  State<NewAppSignup> createState() => _NewAppSignupState();
}

class _NewAppSignupState extends State<NewAppSignup> {
  String gender = "male";
  bool tnc=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                    "https://img.freepik.com/free-vector/blur-pink-blue-abstract-gradient-background-vector_53876-174836.jpg?w=360",fit: BoxFit.fill,)),
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 170,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "First name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 170,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Last name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 370,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter phone",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RadioMenuButton(
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                         setState(() {
                           gender = value.toString();
                         });
                        },
                        child: Text("Male"),
                      ),
                      RadioMenuButton(
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });                        },
                        child: Text("Female"),
                      ),
                      RadioMenuButton(
                        value: "other",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });                        },
                        child: Text("Other"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 370,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Enter email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 370,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Date of birth",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 370,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan[200],
                        ),
                        child: Text("Regster"),
                      ),
                    )
                  ],
                ),
                CheckboxMenuButton(value:tnc , onChanged: (bool ? value){
                  setState(() {
                    tnc=value!;

                  });
                }, child: Text("trems and conditions"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
