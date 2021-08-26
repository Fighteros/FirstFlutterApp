
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/single_chat_screen/SingleChatScreen.dart';

class Messenger extends StatelessWidget {
  var screenContext;

  @override
  Widget build(BuildContext context) {
    screenContext = context;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/167878827_798492194400631_6227604413675121542_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHsDjw108P0MitKBM9wcdFiQ_9k_VY77ShD_2T9VjvtKA84dlBsflkxFA07LmSrs7jnlostmZeWtoszIpJ0jjxf&_nc_ohc=9t2EC9N4toIAX-7Qkpd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=e86cc009dd85dd68133b01b404567729&oe=613240FF'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.0,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            iconSize: 40.0,
            splashRadius: 21.0,
            icon: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            onPressed: () {
            },
          ),
          IconButton(
            iconSize: 40.0,
            splashRadius: 21.0,
            icon: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20.0,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 40.0,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10.0,
                ),
                // Stories Row
                Container(
                  height: 100.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStroyItem(),
                    separatorBuilder: (context, index) => SizedBox(width: 20.0),
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildChatItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10.0,
                        ),
                    itemCount: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 1. build item
  // 2.  build list
  // 3. add item to list
  // reusable item


  Widget buildChatItem() => GestureDetector(
        onTap: () {
          Navigator.push(
              screenContext,
              MaterialPageRoute(
                  builder: (screenContext) => SingleChatScreen()));
        },
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 1.0, end: 1.0),
                  child: CircleAvatar(
                    radius: 9.5,
                    backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 2.0, end: 2.0),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Eng. Mohamed Menem",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        "You:  ❤يارب يا بشمهندس والله",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 3.0,
                        height: 3.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      "1m",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildStroyItem() => GestureDetector(
        onTap: () {
          Navigator.push(
              screenContext,
              MaterialPageRoute(
                  builder: (screenContext) => SingleChatScreen()));
        },
        child: Container(
          width: 60.0,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 1.0, end: 1.0),
                    child: CircleAvatar(
                      radius: 9.5,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 2.0, end: 2.0),
                    child: CircleAvatar(
                      radius: 8.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Eng. Mohamed Menem",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );

}
