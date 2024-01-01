import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';




class ProgressBarPercente extends StatefulWidget {
  ProgressController controller;

  ProgressBarPercente({required this.controller});

  @override
  State<ProgressBarPercente> createState() => _ProgressBarPercenteState();
}

class _ProgressBarPercenteState extends State<ProgressBarPercente> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListenner(_onProgressUpdate);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  CircularPercentIndicator(
          radius: 30.0,
          lineWidth: 5.0,
          percent: widget.controller.progress,
          center: Text("${(widget.controller.progress*100).toInt()}%",style: GoogleFonts.acme(color: Colors.green),),
          progressColor: Colors.green,
        ),
      ),
    );
  }

  void _onProgressUpdate() {
    setState(() {

    });
  }
}

class ProgressController{
  late double _progress;
  void Function()? listener;

  ProgressController():_progress=0;




  void addListenner(void Function() listener){
    this.listener=listener;
  }

  updateProgress(int progress,int total){
    _progress=progress/total;
    listener?.call();
  }
  double get progress=>_progress;

}
