import 'package:flutter/material.dart';
import 'package:mybtn/src/common/router/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
// import 'package:mybtn/webview_consts.dart';
import 'package:go_router/go_router.dart';
// import 'package:webview_flutter/webview_flutter.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Future<bool> _loadData() async {
  //   final first = await FirstOpenStorage.getFirst();
  //   if (first == null) return true;
  //   return first;
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark().copyWith(
            primary: AppColors.red,
          ),
        ),
        themeMode: ThemeMode.dark,
        title: 'Football App',
        routerConfig: AppRouter.router(),
        // home: const GetStartedPage(),
        // home: FutureBuilder(
        //   future: _loadData(),
        //   builder: (BuildContext context, AsyncSnapshot snapshot) {
        //     if (!snapshot.hasData) {
        //       return const GetStartedPage(isLoading: true);
        //     } else if ((snapshot.data as bool)) {
        //       return const GetStartedPage();
        //     } else {
        //       return const LeaguePage();
        //     }
        //   },
        // ),
      ),
    );
  }
}

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  // late WebViewController _webViewController;
  bool visibility = true;

  void _awaitFunc() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) context.go('/loader');
  }

  @override
  void initState() {
    super.initState();
    _awaitFunc();
    // _webViewController = WebViewController()
    //   ..loadRequest(
    //     Uri.parse(WebviewConsts.launchUrl),
    //   )
    //   ..setJavaScriptMode(
    //     JavaScriptMode.unrestricted,
    //     // onWebViewCreated: (WebViewController webViewController) {
    //     //   _webViewController = webViewController;
    //     // },
    //   )
    //   ..setNavigationDelegate(
    //     NavigationDelegate(
    //       // initialUrl: widget.url,
    //       // javascriptMode: JavascriptMode.unrestricted,
    //       // onWebViewCreated: (WebViewController webViewController) {
    //       //   _webViewController = webViewController;
    //       // },
    //       onPageStarted: (String url) {
    //         print(url);
    //       },
    //       onPageFinished: (String url) async {
    //         print(url);
    //         if (url.contains(WebviewConsts.checkLetter)) {
    //           if (mounted) context.go('/loader');
    //         } else {
    //           visibility = false;
    //           setState(() {});
    //         }
    //       },
    //     ),
    //   );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // WebViewWidget(
            //   controller: _webViewController,
            // ),
            if (visibility)
              ColoredBox(
                color: AppColors.red,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/splash_screen_back.png',
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 50.w),
                        child: const CircularProgressIndicator(
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        // bottomNavigationBar: visibility
        //     ? null
        //     : BottomAppBar(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             IconButton(
        //               icon: const Icon(Icons.arrow_back),
        //               onPressed: () async {
        //                 if (await _webViewController.canGoBack()) {
        //                   _webViewController.goBack();
        //                 }
        //               },
        //             ),
        //             IconButton(
        //               icon: const Icon(Icons.arrow_forward),
        //               onPressed: () async {
        //                 if (await _webViewController.canGoForward()) {
        //                   _webViewController.goForward();
        //                 }
        //               },
        //             ),
        //           ],
        //         ),
        //       ),
      ),
    );
  }
}
