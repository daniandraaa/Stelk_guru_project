import 'package:flutter/material.dart';

class Behavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class BertanyaForumPage extends StatelessWidget {
  const BertanyaForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Bertanya',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ScrollConfiguration(
        behavior: Behavior(),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pastikan pertanyaan anda Relevan',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        Text(
                          'dengan topik forum ini.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.send),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    hintText: "Tulis Pertanyaan...",
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(55),
                        borderSide: const BorderSide(
                            width: 1, color: Colors.transparent)),

                    // focusedBorder: OutlineInputBorder(
                    //   // borderSide: OutlinedBorder(),
                    //   borderRadius: BorderRadius.circular(55),
                    // )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
