import 'package:flutter/material.dart';
import 'package:flutter_haber/article_model.dart';
import 'package:flutter_haber/article_view.dart';
import 'package:flutter_haber/news.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews({required this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = [];
  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TR",
              style: GoogleFonts.gafata(
                textStyle: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
            ),
            Text(
              "SERVER",
              style: GoogleFonts.quando(
                  textStyle: TextStyle(
                    color: Colors.black87,
                  )),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                ),
          ),
        ],
        elevation: 0.0,
      ),
      body:  _loading
          ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
          :SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ///Blog
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BlogTile(
                        imageUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url,
                      );

                    }),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc,url;

  BlogTile({required this.imageUrl, required this.title, required this.desc,required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            Text(title,style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            Text(desc,style: TextStyle(
              color: Colors.black54,
            ),),
          ],
        ),
      ),
    );
  }
}