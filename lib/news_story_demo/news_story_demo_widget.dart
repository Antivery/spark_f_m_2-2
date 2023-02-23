import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsStoryDemoWidget extends StatefulWidget {
  const NewsStoryDemoWidget({Key key}) : super(key: key);

  @override
  _NewsStoryDemoWidgetState createState() => _NewsStoryDemoWidgetState();
}

class _NewsStoryDemoWidgetState extends State<NewsStoryDemoWidget> {
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
            context.pushNamed('NewsFeedDemo');
          },
        ),
        title: Text(
          'News',
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
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Image.asset(
                    'assets/images/Screen_Shot_2022-06-13_at_1.59.01_PM.jpg',
                    width: 100,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  decoration: BoxDecoration(
                    color: Color(0xFFEB4323),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 10),
                    child: Text(
                      'Jay-Z\'s Bitcoin Academy to Teach Financial Literacy to Residents of Brooklyn Housing Project',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 18,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 50),
                    child: Text(
                      'Twitter co-founder and Block CEO Jack Dorsey and rapper Shawn \"Jay-Z\" Carter are teaming up to launch the Bitcoin Academy, an educational program designed to teach participants about financial literacy and the world\'s largest cryptocurrency. \n\nThe free classes, which will be offered in-person and online from June 22 through Sept. 7, are exclusively available to residents of Brooklyn New York\'s Marcy Houses complex, where Jay-Z grew up. The Bitcoin Academy plans to eventually expand to other neighborhoods in the future.\n\nThe in-person classes will be hosted two evenings per week and serve participants dinner. A \"Crypto Kids Camp\" program will also take place on two Saturdays for Marcy kids and teens ages 5 through 17.  The academy will provide participants with MiFi devices and a one-year limited data plan, plus smartphones if needed.\n\nA spokesperson for the Bitcoin Academy confirmed to FOX Business that the curriculum will include topics such as \"What is Money?,\" \"What Is Cryptocurrency?,\" \"What is Blockchain?\" and \"How to Keep Yourself Safe from Scammers.\"\n',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
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
