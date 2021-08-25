import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChatScreen extends StatefulWidget {
  const SingleChatScreen({Key? key}) : super(key: key);

  @override
  SingleChatScreenState createState() => SingleChatScreenState();
}

class SingleChatScreenState extends State<SingleChatScreen> {
  // dummy response
  bool isSent = true;
  bool isTyping = true;
  bool hasTapped = false;
  late var msgLength;
  late var msgSent;
  late var msgRcvd;
  var msgController = TextEditingController();
  late var textFormWidth;
  late var normalBottomRow;
  late var typingBottomRow;

  var txtfocusNode = FocusNode();
  var typingfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    msgLength = 30.0;
    textFormWidth = 165.0;
    normalBottomRow = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.photo,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mic,
            color: Colors.blue,
          ),
        ),
        Container(
          height: 30.0,
          width: textFormWidth,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              focusNode: txtfocusNode,
              onTap: () {
                setState(() {});
              },
              controller: msgController,
              decoration: InputDecoration.collapsed(
                hintText: "Aa",
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.thumb_up,
              color: Colors.blue,
            )),
      ],
    );
    typingBottomRow = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(() {});
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            height: 30.0,
            width: textFormWidth,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                focusNode: typingfocusNode,
                onChanged: (value) {
                  setState(() {

                  });
                },
                controller: msgController,
                decoration: InputDecoration.collapsed(
                  hintText: "Type a Message",
                ),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.blue,
            )),
      ],
    );
    msgSent = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: msgLength * 1.15,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "thanks a lot",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10.0),
          child: CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/167878827_798492194400631_6227604413675121542_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHsDjw108P0MitKBM9wcdFiQ_9k_VY77ShD_2T9VjvtKA84dlBsflkxFA07LmSrs7jnlostmZeWtoszIpJ0jjxf&_nc_ohc=9t2EC9N4toIAX-7Qkpd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=e86cc009dd85dd68133b01b404567729&oe=613240FF'),
          ),
        ),
      ],
    );
    msgRcvd = Row(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10.0),
          child: CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'),
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Container(
          height: msgLength * 1.15,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Best Wishes Everyone",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    setState(() {
      txtfocusNode.addListener(() {
        hasTapped = (txtfocusNode.hasFocus)? true : false;
        typingfocusNode.requestFocus();
      });

/*      msgController.addListener(() {
        isTyping = (msgController.text.isEmpty)? false : true;
      });*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Mohamed",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 19.0,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 2.0),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                msgRcvd,
                SizedBox(
                  height: 10.0,
                ),
                msgSent,
                (hasTapped)? typingBottomRow : normalBottomRow,
              ],
            ),
          ),
        ),
      ),
    );
  }



}

