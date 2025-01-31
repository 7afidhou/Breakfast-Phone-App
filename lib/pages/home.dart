//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:quizapp/models/Items_class.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ItemsClass> categories = [];

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  void _getCategories() {
    categories = ItemsClass.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _seachField(),
          const SizedBox(height: 20), // to create vertical distance from top
          _categoriesSection(),
          const SizedBox(height: 20), // to create vertical distance from top
        Container(

        alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 60, right: 60),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child:const  Text(
            'Go to login Page',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ), 
          
        )



        ],
      ),
    ); //scaffold is the widget that has almost every widget we need
  }

  Column _categoriesSection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 140,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: categories[index].boxcolor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          child:Padding(
                            padding: const EdgeInsets.all(10),
                            child:SvgPicture.asset(categories[index].iconpath, height: 20, width: 20, ), )
                           
                          ),
                          const SizedBox(height: 25),
                          Text(
                            categories[index].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        );
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
                          // used to create padding so anything you want a padding to it wrap it in padding
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
