import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(""
                  "https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/167878827_798492194400631_6227604413675121542_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHsDjw108P0MitKBM9wcdFiQ_9k_VY77ShD_2T9VjvtKA84dlBsflkxFA07LmSrs7jnlostmZeWtoszIpJ0jjxf&_nc_ohc=9t2EC9N4toIAX-7Qkpd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=e86cc009dd85dd68133b01b404567729&oe=613240FF"),

            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        titleSpacing: 20,
        actions: [
          // if i put into a CircleAvatar an IconButton it will be Clicky
          // if i swap Circle avatar with the Icon button nothing will differ
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: IconButton(
              splashRadius: 23.0,
              onPressed: () {print("Camera is clicked");},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: IconButton(
              iconSize: 40.0,
              splashRadius: 22.0,
              onPressed: () {print("edit is clicked");},
              icon: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // search box
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0
                      ),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // fixes will applied here
              Container(
                height: 110.0,
                // exception due to structure
                // listviews can't be wrapped by Rows unless they are Expanded to fill the container holds it
                /* child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // container of create Room was here

                    SizedBox(
                      width: 10.0,
                    ),
                    // exception was here !! carefully deal with ListViews
                  ],
                ),*/
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                                children:[
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[300],
                                    radius: 30.0,
                                    child: IconButton(
                                      iconSize: 30.0,
                                      onPressed: () {print("Create a Room");},
                                      icon: Icon(
                                        Icons.video_call,
                                        color: Colors.black,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ]),
                            SizedBox(height: 10.0,),
                            Text(
                              "Create Room",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                fontSize: 17.0
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      // listview must be wrapped as Expanded if it's wrapped into a row
                      // ListView will expand to be the height of the parent (column) and this will cause overflow error
                      //
                      SizedBox(
                        width: 10.0,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildStoryItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 10.0),
                          itemCount: 15,
                      ),
                    ],
                  ),
                ),

              ),
              SizedBox(height: 25.0),
              // chat item
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10.0,) ,
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStoryItem() => Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 5.0,
            ),
            child: Container(
              width: 17.0,
              height: 17.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 5.0,
            ),
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10.0,),
      Text(
        "Mohamed Menem",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17.0
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    ],
  ),
) ;

Widget buildChatItem() =>  Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/129724210_4256347884381296_6719747894575005085_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF_MuvjwyGJd2QpyAKVR_iwQf45cPCMVgdB_jlw8IxWBxF4MZ4mr8OETdiRirJkdccVVo_h82bZabz-m-1Tb6X9&_nc_ohc=A2bCapDIVSgAX_yw-Zu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=8f7a6c0c86f8c7ccbf8accad23d91909&oe=61327122'
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 5.0,
          ),
          child: Container(
            width: 17.0,
            height: 17.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 5.0,
          ),
          child: Container(
            width: 15.0,
            height: 15.0,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle
            ),
          ),
        ),
      ],
    ),
    SizedBox(
      width: 10.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mohamed Menem",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Hello, everyone Welcome i hope you Enjoy the summer training!",
                  style: TextStyle(
                      fontSize: 15.0
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8.0
                ),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Text(
                "1m",
                style: TextStyle(
                    fontSize: 15.0
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);