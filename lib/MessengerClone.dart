import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.video_call,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Create Room",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
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
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/228791783_923145371889220_6066316107584179037_n.jpg?_nc_cat=109&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeGlOeO8sK2rz5a-59pcYHtYWAFmsvl8nzZYAWay-XyfNgHy3hxuWEIBYw4KiC1a7Dr8CpNMtQtOuRotCpxw-lOj&_nc_ohc=NAJodUG5nq0AX8HQ-Xt&_nc_oc=AQkzBCgx1XNLyCZtNsNWlFgBa47bIvhYlYZWShsWFQAiyhscMHLAPI3xHZXjsz4dGX0&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=1f02e2ba5a8abcfba152c1e3c7858bcd&oe=61315572'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.greenAccent[100],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 2.0),
                              child: Text(
                                "1m",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Fathi Yasser",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://sonar-frx.xx.fbcdn.net/v/t1.6435-1/p100x100/40158616_2113907392208443_703552867566354432_n.jpg?snr=50Kchen&_nc_cat=100&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHYtHM0q3jFS77gdY7c_CT_AY1UIubeYCwBjVQi5t5gLAgP7vQd5iKA8WPIRTD-o7L6xtsx5DMaOQ-ArTn5_W_T&_nc_ohc=4sgcBxRk3n8AX86AYmK&_nc_ad=z-m&_nc_cid=0&_nc_ht=sonar-frx.xx&oh=e2ecad1a41f6ab09bc65e783bcf911c9&oe=6132F379'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.greenAccent[100],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 3.0, end: 2.0),
                              child: Text(
                                "5m",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Mohamed Moustafa",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/138678325_1945214738953316_6695168114312476737_n.jpg?_nc_cat=108&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeFTLhBRkzjPdNZeVRUmRz8W1-5Gbg7FHKPX7kZuDsUco84dYmoRUIIeSDIpEV7UwUptlZEta-WPCTfDawruWYHv&_nc_ohc=YzdmAQOL-V0AX9yPxAu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=e951a6ac3f2b582877f37edb9304c422&oe=6133F378'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "Felopater Adel",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/196780456_2915046505421448_1277951248212564708_n.jpg?_nc_cat=101&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeF22p6JGHwFBWVqTJhC3_9T0e_4_gJDUDHR7_j-AkNQMZnsoRK-wDTQjhx_on1aXGRNLVnhbDZWrQzbY3tepqHD&_nc_ohc=_IQo7QhQiekAX9QHi42&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=11d77b989731fd5f1a73438b3f853e48&oe=613436AE'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "Abdo Hussein",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p200x200/212885268_840127510235361_2587376266561697221_n.jpg?_nc_cat=109&ccb=1-4&_nc_sid=dbb9e7&_nc_eui2=AeHcB66Y-itLAeM1EZotefO5LkFFJo2UBHwuQUUmjZQEfDnQB6S7SciNGf0f1MKlmupZPyUyNu49-9HqYb5SRd7U&_nc_ohc=nWHMj8ZZIGIAX_V95-8&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=2db6e6cc9e3d43a11a410409949d684a&oe=613305F6'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "Mahmoud Gamal",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/143090721_2899494637043259_6948776822905969944_n.jpg?_nc_cat=106&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHFSQgOI-0cJjKlNWBT1S4Dt32rEAMru4K3fasQAyu7gg_LAt_DgoNJ-TFT4SijJYYZbtLNj1ZIPWFzp1GgolqS&_nc_ohc=tq7f5wG4PuIAX8pp2St&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=b60667a8ed15fbb77139cff13cb08d55&oe=6131F812'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "Mohamed A. Elsayed",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.xx.fbcdn.net/v/t1.6435-1/p100x100/129513454_2755029271377421_6449477807119458154_n.jpg?_nc_cat=108&ccb=1-4&_nc_sid=dbb9e7&_nc_eui2=AeHC5dORQW8K2FOlj6h2g0QcQN3FUd9ynEtA3cVR33KcS6RdFvRhuuzNcCA0BGegTeeZRUkL5uUFzUqi2wATqcoX&_nc_ohc=IcfY2ib2rXIAX-3xw5r&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=859f8d2fe3cad66444140a1cdb4098b5&oe=6132816D'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "AbdElaziz Mohamed",
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
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p200x200/185372189_3472131852886919_1362493273994445175_n.jpg?_nc_cat=100&ccb=1-4&_nc_sid=dbb9e7&_nc_eui2=AeGoUY4_GJ5iMfL-ZyfPAXZ_U3uhv0t8ZvFTe6G_S3xm8WRCfoJ0L4HKrvpF1k67qSFmP51i9rIpgTj1WTVzF34T&_nc_ohc=ARP8z0wCy5kAX9uQBxZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=7353e1659007254f960e477dd6146b3e&oe=6131418E'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 1.0, end: 1.0),
                              child: CircleAvatar(
                                radius: 9.5,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 2.0),
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
                          "Amr Ashraf",
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
                ]),
              ),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
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
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 1.0, end: 1.0),
                                child: CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 2.0, end: 2.0),
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
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      "You:  ❤يارب يا بشمهندس والله",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      width: 3.0,
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("1m",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/143090721_2899494637043259_6948776822905969944_n.jpg?_nc_cat=106&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeHFSQgOI-0cJjKlNWBT1S4Dt32rEAMru4K3fasQAyu7gg_LAt_DgoNJ-TFT4SijJYYZbtLNj1ZIPWFzp1GgolqS&_nc_ohc=tq7f5wG4PuIAX8pp2St&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=b60667a8ed15fbb77139cff13cb08d55&oe=6131F812'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 1.0, end: 1.0),
                                child: CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 2.0, end: 2.0),
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
                                "Mohamed A. Elsayed",
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
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      "https://flutter.dev",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("14m",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p200x200/219787548_2933783466880682_2863240601119422019_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=dbb9e7&_nc_eui2=AeFuGKPehtuthLmQHoim_luAPl7lKPLRWlU-XuUo8tFaVWKCXEew1g_XdoQ66mC93blSenEc8_3r6lxhxzQmUHFK&_nc_ohc=lJ9NdKVZ_fMAX_fIED7&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=f99109fe542498ef2a5e691b5e38cd51&oe=6131DFEB'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 1.0, end: 1.0),
                                child: CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 2.0, end: 2.0),
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
                                "Ahmed H. Makhlouf",
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
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      "خلصانة",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("15m",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-1/p100x100/228791783_923145371889220_6066316107584179037_n.jpg?_nc_cat=109&ccb=1-4&_nc_sid=7206a8&_nc_eui2=AeGlOeO8sK2rz5a-59pcYHtYWAFmsvl8nzZYAWay-XyfNgHy3hxuWEIBYw4KiC1a7Dr8CpNMtQtOuRotCpxw-lOj&_nc_ohc=NAJodUG5nq0AX8HQ-Xt&_nc_oc=AQkzBCgx1XNLyCZtNsNWlFgBa47bIvhYlYZWShsWFQAiyhscMHLAPI3xHZXjsz4dGX0&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fcai20-4.fna&oh=1f02e2ba5a8abcfba152c1e3c7858bcd&oe=61315572'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 1.0, end: 1.0),
                                child: CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 2.0, end: 2.0),
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
                                "Fathi Yasser",
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
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      "The voice call ended",
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("5:30 pm",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'https://scontent.xx.fbcdn.net/v/t1.6435-1/p100x100/129513454_2755029271377421_6449477807119458154_n.jpg?_nc_cat=108&ccb=1-4&_nc_sid=dbb9e7&_nc_eui2=AeHC5dORQW8K2FOlj6h2g0QcQN3FUd9ynEtA3cVR33KcS6RdFvRhuuzNcCA0BGegTeeZRUkL5uUFzUqi2wATqcoX&_nc_ohc=IcfY2ib2rXIAX-3xw5r&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=859f8d2fe3cad66444140a1cdb4098b5&oe=6132816D'
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 1.0, end: 1.0),
                                child: CircleAvatar(
                                  radius: 9.5,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 2.0, end: 2.0),
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
                                "AbdElaziz Mohamed",
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
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                    child: Text(
                                      "You: ok",
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      width: 5.0,
                                      height: 5.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("3:30 pm",style: TextStyle(
                                      fontWeight: FontWeight.w500
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
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
