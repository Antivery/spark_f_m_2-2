import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:spark_f_m_2/flutter_flow/flutter_flow_audio_player.dart';
import 'package:spark_f_m_2/song_screen/song_screen.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:miniplayer/miniplayer.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flutter_flow/nav/nav.dart';
import 'package:miniplayer/miniplayer.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterFlowTheme.initialize();

  FFAppState(); // Initialize FFAppState

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  Stream<SparkFM2FirebaseUser> userStream;

  AppStateNotifier _appStateNotifier;
  GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);
    userStream = sparkFM2FirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    Future.delayed(
      Duration(seconds: 1),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SparkFM 2',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'LiveRadioTabDemo';
  AssetsAudioPlayer player = new AssetsAudioPlayer();
  static const double _playerMinHeight = 60.0;
  int currentTabIndex = 0;
  bool isPlaying = false;
  Music music;

  Widget miniPlayer(Music music, {bool stop = false}) {
    this.music = music;

    // if (music == null) {
    //   return SizedBox();
    // }
    if (stop) {
      isPlaying = false;
      player.isPlaying;
    }
    // setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/LOVE_IN_MUSIC_(1).png', fit: BoxFit.cover),
          Text(
            'hi',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
              onPressed: () async {
                isPlaying = !isPlaying;
                if (isPlaying) {
                  await player.play();
                } else {
                  await player.pause();
                }
                setState(() {});
              },
              icon: isPlaying
                  ? Icon(Icons.pause, color: Colors.white)
                  : Icon(Icons.play_arrow, color: Colors.white))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'LiveRadioTabDemo': LiveRadioTabDemoWidget(),
      'BrowseDemo': BrowseDemoWidget(),
      'NewsFeedDemo': NewsFeedDemoWidget(),
      'SparkTVDemo': SparkTVDemoWidget(),
      'ChatroomDemo': ChatroomDemoWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Miniplayer(
            minHeight: _playerMinHeight,
            maxHeight: 800,
            builder: (height, percentage) {
              if (percentage > 0.2)
                return AssetAudioPlayer();
              else
                return AssetAudioPlayer();
            },
          ),
          BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xFFEB4323),
            unselectedItemColor: Color(0x8A000000),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.online_prediction,
                  size: 24,
                ),
                label: 'Live Radio',
                tooltip: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                  size: 24,
                ),
                activeIcon: FaIcon(
                  FontAwesomeIcons.music,
                  size: 24,
                ),
                label: 'Browse',
                tooltip: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 24,
                ),
                label: 'News',
                tooltip: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.ondemand_video,
                  size: 24,
                ),
                label: 'Spark TV',
                tooltip: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  size: 24,
                ),
                activeIcon: Icon(
                  Icons.chat,
                  size: 24,
                ),
                label: 'Chat',
                tooltip: '',
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Music {
  String name;
  String image;
  String desc;
  Source audioURL;
  Music(this.name, this.image, this.desc, this.audioURL);
}
