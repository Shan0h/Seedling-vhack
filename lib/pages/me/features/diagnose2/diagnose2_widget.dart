import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'diagnose2_model.dart';
export 'diagnose2_model.dart';

class Diagnose2Widget extends StatefulWidget {
  const Diagnose2Widget({super.key});

  @override
  State<Diagnose2Widget> createState() => _Diagnose2WidgetState();
}

class _Diagnose2WidgetState extends State<Diagnose2Widget>
    with TickerProviderStateMixin {
  late Diagnose2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Diagnose2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Disease',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('HomePage');
                },
                child: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Text(
                    'Leaf Rust',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 20.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1501430654243-c934cec2e1c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx3aGVhdHxlbnwwfHx8fDE3MTEwOTY0ODd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1564417947365-8dbc9d0e718e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxM3x8d2hlYXQlMjBjdWx0aXZhdGlvbnxlbnwwfHx8fDE3MTExMjA5Njh8MA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1635174815612-fd9636f70146?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8d2hlYXR8ZW58MHx8fHwxNzExMDk2NDg3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ].divide(const SizedBox(width: 12.0)),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primary,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding: const EdgeInsets.all(6.0),
                        tabs: const [
                          Tab(
                            text: 'Symptoms',
                          ),
                          Tab(
                            text: 'Preventions:',
                          ),
                          Tab(
                            text: 'Solutions:',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Early Symptoms:\n Small, orange-red pustules appear on the upper surfaces of the leaves. These pustules may also appear on the leaf sheaths and, less commonly, on the stems and glumes.\n\nProgression: \nThe pustules burst open, releasing spores that create a rusty appearance. Severely infected leaves may turn yellow and die prematurely, which can reduce photosynthesis and, consequently, grain fill.\n\nIdentification: \nThe disease is often identified by the presence of these small, round to oval pustules grouped in clusters, which distinguishes it from other rusts.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Resistant Varieties: \nPlanting wheat varieties that are resistant to leaf rust is the most effective prevention strategy. Resistance should be regionally specific, as the pathogen can vary.\n\nCrop Rotation: \nRotating wheat with non-host crops can help reduce the inoculum in the soil since the fungus primarily survives on wheat stubble.\n\nAvoid Early Planting: \nEarly planted wheat can harbor the fungus over winter, providing a source for spring infection. Planting after the optimal window can reduce early infections.\n\nManage Volunteer Wheat: \nVolunteer wheat and other grass hosts can serve as a reservoir for the fungus. Managing these can help reduce the source of inoculum.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Fungicides: \nApplication of fungicides can be effective, especially when applied at the first sign of infection and before the disease spreads widely. Products should be chosen based on local recommendations and efficacy against leaf rust.\n\nTimely Applications: \nThe timing of fungicide applications is critical. The most effective control is achieved when applied at the flag leaf stage, just before or at the early stages of disease development.\n\nEradicate Alternate Hosts: \nRemoving or controlling alternate hosts (other grass species that can harbor the fungus) in and around wheat fields can reduce the potential for infection.\n\nIntegrated Disease Management: Combining resistant varieties, proper planting time, crop rotation, and fungicide applications can provide a comprehensive approach to managing leaf rust effectively.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
