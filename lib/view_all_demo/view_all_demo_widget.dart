import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllDemoWidget extends StatefulWidget {
  const ViewAllDemoWidget({Key key}) : super(key: key);

  @override
  _ViewAllDemoWidgetState createState() => _ViewAllDemoWidgetState();
}

class _ViewAllDemoWidgetState extends State<ViewAllDemoWidget> {
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
            Icons.arrow_back,
            color: Color(0xFFEB4323),
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('BrowseDemo');
          },
        ),
        title: Text(
          'View All',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 25, 16, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Featured in this Category',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 420,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('SongListDemo');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x44111417),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 250,
                                          height: 250,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 2, 2, 2),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              child: Image.asset(
                                                'assets/images/LOVE_IN_MUSIC_(2).png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 4),
                                          child: Text(
                                            'The Retro VibeTape',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 4),
                                                child: Text(
                                                  'DJ Isabella',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 4),
                                                child: Text(
                                                  'Classic Hip Hop',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 40,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x44111417),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 250,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 2, 2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              'assets/images/LOVE_IN_MUSIC_(7).png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 4),
                                        child: Text(
                                          'Summer Jamz',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'DJ Asparagus',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'Club Hits',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 40,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x44111417),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 250,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 2, 2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              'assets/images/LOVE_IN_MUSIC_(8).png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 4),
                                        child: Text(
                                          'The LoveTape',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'DJ Mike Tee',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                '90s R&B',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 40,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x44111417),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 250,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 2, 2),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              'assets/images/LOVE_IN_MUSIC_(2).png',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 4),
                                        child: Text(
                                          'The Retro VibeTape',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'DJ Isabella',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 4),
                                              child: Text(
                                                'Classic Hip Hop',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                        child: Text(
                          'More from this Category',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/LOVE_IN_MUSIC_(7).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 0, 40, 0),
                                    child: Text(
                                      'Album/Playlist Title',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 60, 0),
                                      child: Text(
                                        'Creator\'s Name',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 95, 0),
                                    child: Text(
                                      'Genre Here',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF575757),
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 75, 0),
                                    child: Text(
                                      'Exclusively on Spark FM.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/LOVE_IN_MUSIC_(7).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 0, 40, 0),
                                    child: Text(
                                      'Album/Playlist Title',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 60, 0),
                                      child: Text(
                                        'Creator\'s Name',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 95, 0),
                                    child: Text(
                                      'Genre Here',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF575757),
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 75, 0),
                                    child: Text(
                                      'Exclusively on Spark FM.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/LOVE_IN_MUSIC_(7).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 0, 40, 0),
                                    child: Text(
                                      'Album/Playlist Title',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 60, 0),
                                      child: Text(
                                        'Creator\'s Name',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 95, 0),
                                    child: Text(
                                      'Genre Here',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF575757),
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 75, 0),
                                    child: Text(
                                      'Exclusively on Spark FM.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/LOVE_IN_MUSIC_(7).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 0, 40, 0),
                                    child: Text(
                                      'Album/Playlist Title',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 60, 0),
                                      child: Text(
                                        'Creator\'s Name',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 95, 0),
                                    child: Text(
                                      'Genre Here',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF575757),
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 75, 0),
                                    child: Text(
                                      'Exclusively on Spark FM.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/LOVE_IN_MUSIC_(7).png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        7, 0, 40, 0),
                                    child: Text(
                                      'Album/Playlist Title',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 60, 0),
                                      child: Text(
                                        'Creator\'s Name',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 95, 0),
                                    child: Text(
                                      'Genre Here',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF575757),
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25, 0, 75, 0),
                                    child: Text(
                                      'Exclusively on Spark FM.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
