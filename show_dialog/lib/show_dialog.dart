import 'package:flutter/material.dart';

typedef dialogClick  =  void Function();
class ShowDialog extends StatefulWidget {

  final title;
  final cancell;
  final sure;
  final dialogClick cancellCilck;
  final dialogClick sureClick;
  ShowDialog({this.title,this.cancell,this.sure,this.cancellCilck,this.sureClick});

  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 30,right: 30),
      child: Container(
        alignment: Alignment.topCenter,
        height: 150.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 24,
              margin: EdgeInsets.only(top:40,bottom: 35),
              alignment: Alignment.center,
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Color(0xFF22242A),
                  fontFamily: 'PingFangSC-Medium',
                  fontSize: 18.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Divider(color: Color(0xFFF1F3F8),height: 0.5),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    widget.cancellCilck();
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: widget.sure == null ? MediaQuery.of(context).size.width - 60:(MediaQuery.of(context).size.width - 60-0.5)/2,
                    alignment: Alignment.center,
                    child: Text(
                      widget.cancell,
                      style: TextStyle(
                        color: Color(0xFF22242A),
                        fontFamily: 'PingFangSC-Regular',
                        fontSize: 15.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),

                widget.sure == null ?
                Container() :
                Container(
                  height: 50,
                  width: 0.5,
                  color: Color(0xFFF1F3F8),
                ),

                widget.sure == null ? Container(

                ):
                GestureDetector(
                  onTap: (){
                    widget.sureClick();
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: (MediaQuery.of(context).size.width - 60-0.5)/2,
                    alignment: Alignment.center,
                    child: Text(
                      widget.sure,
                      style: TextStyle(
                        color: Color(0xFF83CBE6),
                        fontFamily: 'PingFangSC-Regular',
                        fontSize: 15.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}