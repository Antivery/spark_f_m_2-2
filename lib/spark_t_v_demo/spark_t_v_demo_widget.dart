import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SparkTVDemoWidget extends StatefulWidget {
  const SparkTVDemoWidget({
    Key key,
    this.youtubeId,
  }) : super(key: key);

  final String youtubeId;

  @override
  _SparkTVDemoWidgetState createState() => _SparkTVDemoWidgetState();
}

class _SparkTVDemoWidgetState extends State<SparkTVDemoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.menu,
            color: Color(0xFFEB4323),
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Spark TV',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xFFEB4323),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL(
                                    'https://facebook.com/sparkfmonline');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.facebookSquare,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL(
                                    'https://instagram.com/sparkfmonline');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 35,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await launchURL(
                                  'https://www.twitch.tv/sparkfmonline');
                            },
                            child: FaIcon(
                              FontAwesomeIcons.twitch,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL(
                                    'https://www.youtube.com/c/SparkFMOnline');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.youtube,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://youtu.be/AUPP1LtqI-U',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=kadM985JU_U',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=4phKs9LOm-g',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=CAPORixgfoc',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
                FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=Yz9t0pYklxw',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
