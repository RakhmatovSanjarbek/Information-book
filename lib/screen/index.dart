import 'package:flutter/material.dart';
import 'package:information/base/models/video_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../base/load_data.dart';
import '../base/models/book_model.dart';
import '../last_screen/kitoblar.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  BookData bookData = BookData();
  VideoData videoData = VideoData();
  List<BookModel> books = [];
  List<VideoModel> videos = [];

  @override
  void initState() {
    super.initState();
    bookData.bookData().then((value) {
      books = bookData.books;
      setState(() {});
    });
    videoData.videoData().then((value) {
      videos = videoData.videos;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 180.0,
            child: Stack(
              children: [
                Container(
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
                  height: 150,
                  margin: const EdgeInsets.only(
                      top: 30.0, bottom: 30.0, left: 20.0, right: 20.0),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 230.0, top: 27.0),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3FFw-EQR2DXrZzWL9YUw7QzDtZRxPivAknQ&usqp=CAU'),
                    radius: 65.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50.0, top: 50.0),
                  child: const Column(
                    children: [
                      Text(
                        "Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      Text(
                        "BOOK",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            height: 30.0,
            child: const Text(
              "Kitoblar",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 230.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Books(books[index])));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20.0),
                      width: 350,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            padding: const EdgeInsets.only(left: 150.0),
                            height: 350.0,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.8, 1),
                                  colors: <Color>[
                                    Color(0xffca485c),
                                    Color(0xffe16b5c),
                                    Color(0xfff39060),
                                    Color(0xffffb56b),
                                  ],
                                  // Gradient from https://learnui.design/tools/gradient-generator.html
                                  tileMode: TileMode.mirror,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color(0xff1f005c),
                                      offset: Offset(5, 5),
                                      blurRadius: 5.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  books[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                _setAboute(books[index]),
                                _setStars(books[index].stars),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, bottom: 10.0),
                            width: 130.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                books[index].urlImage,
                                width: 130,
                                height: 220.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            height: 30.0,
            child: const Text(
              "Vedio darsliklar",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          _setVideos(context),
        ],
      ),
    );
  }

  _setAboute(BookModel bookModel) {
    return Text(
      bookModel.about,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  _setStars(int n) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (int i = 0; i < 5; i++) ...{
            if (i < n) ...{
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            } else ...{
              const Icon(
                Icons.star,
                color: Colors.grey,
              ),
            }
          }
        ]);
  }
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
  _setVideos(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videos.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
           onTap: () async {
             await _launchUrl(Uri.parse(videos[index].urlVideo));
           },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 130.0,
              height: 180,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        videos[index].urlImage,
                        width: 130,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    videos[index].name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    videos[index].about,
                    style: const TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
