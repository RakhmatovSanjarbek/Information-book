import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:information/base/models/book_model.dart';

// ignore: must_be_immutable
class Books extends StatefulWidget {
  BookModel book;

  Books(this.book, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Books> createState() => _BooksState(book);
}

class _BooksState extends State<Books> {
  BookModel book;

  _BooksState(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff1f005c),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ],
                // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Image.network(
                    book.urlImage,
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        book.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        book.discribtion,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 550.0,left: 45.0),
            width: 350.0,
            height: 200.0,
            child: GestureDetector(
              onTap: ()  {
                copyTextToBuffer(book.urlBook);
              },
              child: Container(
                margin: const EdgeInsets.only(top: 150.0, left: 50, right: 50),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xff1f005c),
                        Color(0xff5b0060),
                        Color(0xff870160),
                        Color(0xffac255e),
                        Color(0xffca485c),
                        Color(0xffe16b5c),
                        Color(0xfff39060),
                        Color(0xffffb56b),
                      ],
                      // Gradient from https://learnui.design/tools/gradient-generator.html
                      tileMode: TileMode.mirror,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.copy,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Kitob uchun link",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  Future<void> copyTextToBuffer(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }



}
