import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_text_styles.dart';
import 'package:mybtn/src/data/news_api.dart';
import 'package:mybtn/src/entity/news.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.news,
  });

  final News news;

  @override
  State<NewsDetailScreen> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsDetailScreen> {
  Future<List<String>> _loadNewsData() async {
    final content =
        await NewsApi.getPostContentHtml(postUrl: widget.news.detailUrl);
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'News',
          style: AppTextStyle.leagueTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.h,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: ColoredBox(
              color: AppColors.backgroundMiddle,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.network(
                      widget.news.image,
                      width: double.infinity,
                      height: 233.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      widget.news.title,
                      style: AppTextStyle.newsTitleStyle,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  FutureBuilder(
                    future: _loadNewsData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            children: (snapshot.data! as List<String>)
                                .map((String p) => Text(
                                      p == '' ? p : '$p\n',
                                      style: AppTextStyle.newsContentStyle,
                                    ))
                                .toList(),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
