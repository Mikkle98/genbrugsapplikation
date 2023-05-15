import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/login_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'wizard_model.dart';
export 'wizard_model.dart';

class WizardWidget extends StatefulWidget {
  const WizardWidget({Key? key}) : super(key: key);

  @override
  _WizardWidgetState createState() => _WizardWidgetState();
}

class _WizardWidgetState extends State<WizardWidget> {
  late WizardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
      _model.pageViewController!.hasClients &&
      _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WizardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF004030),
          automaticallyImplyLeading: false,
          title: Text(
            'Opsætningsguide',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Nunito',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFF004030),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: PageView(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        250, 5, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Spring over',
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0.05),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 150, 0, 0),
                                      child: Text(
                                        'Dette er en guide til din genbrugs app - Scroll for at komme videre',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Nunito',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 60, 0, 0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 150,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/Skrmbillede_2023-04-27_kl._09.21.42.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    fit: BoxFit.contain,
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.65),
                                        child: Text(
                                          '1. Se din bruger information',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Nunito',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.73),
                                        child: Text(
                                          '2. Se information omkring din genbrugsplads',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Nunito',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.8),
                                        child: Text(
                                          '3. Se dine bestilte tider',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Nunito',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.92),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Text(
                                            '4. Lav din egen unikke rute til dit affald og genrbugsplads besøg ',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.1, 1),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 10, 0, 0),
                                          child: Text(
                                            '5. Se din adgangsgivende QR kode',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, -0.45),
                                    child: Image.asset(
                                      'assets/images/Skrmbillede_2023-04-27_kl._09.52.42.png',
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.7,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.65),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            '1. Her kan du søge efter specifikt affald du skal af med',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.75),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            '2. Her kan du tilføje affald til din personlige rute  ',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.9),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            '3. Her kan du se din Personlige rute samt rækkefølgen det skal smide ud i ',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/Skrmbillede_2023-04-27_kl._10.03.26.png',
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    fit: BoxFit.contain,
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.8),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            '1. Dette er dit valgte affald og i den rækkefølge du skal pakke din trailer - Øverste er første der skal smides ud',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(0.1, 0.95),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 10, 0),
                                          child: Text(
                                            '2. Her kan du færdige gøre din rute samt se hvad dit bidrag kan gå til',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Nunito',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryBtnText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 300, 0, 0),
                                      child: Text(
                                        'Tryk her for at komme i gang',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Nunito',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 50, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginWidget(),
                                            ),
                                          );
                                        },
                                        text: 'Til Login',
                                        options: FFButtonOptions(
                                          width: 350,
                                          height: 50,
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                          iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          textStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 5,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) async {
                                await _model.pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: FlutterFlowTheme.of(context).accent2,
                                activeDotColor:
                                FlutterFlowTheme.of(context).primary,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
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
      ),
    );
  }
}
