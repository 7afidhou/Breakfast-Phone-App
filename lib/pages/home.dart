import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [_seachField()],
      ),
    ); //scaffold is the widget that has almost every widget we need
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text("Breakfast",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
      centerTitle: true,
      elevation: 0.0, //remove shadow
      leading: GestureDetector(
          onTap: () {},
          child: Container(
              //to put a button in the beggining of app bar
              margin: const EdgeInsets.all(10), // to set margin 10 at all sides
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
                size: 27,
              ))),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            //to put a button
            width: 37,
            margin: const EdgeInsets.all(10), // to set margin 10 at all sides
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
              size: 27,
            ),
          ),
        )
      ],
    );
  }

  Container _seachField() {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 40,
              spreadRadius: 0.0)
        ]),
        margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: TextField(
            showCursor: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              suffixIcon: Container(
                width: 70,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black.withOpacity(0.2),
                        indent: 12,
                        endIndent: 12,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(
                              top: 6, bottom: 6, left: 1, right: 10),
                          child: Icon(Icons.filter_list))
                    ],
                  ),
                ),
              ),
              hintText: "Search Pancake",
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none),
            )));
  }
}
