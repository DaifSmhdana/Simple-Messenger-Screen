import 'package:flutter/material.dart';


class messengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children:  const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/92823774?v=4"),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "chats",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text("search"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 114.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index )=> BuildStoryItem(),
                  separatorBuilder: (context , index )=> SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 20,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context , index) => BuildChatItem(),
                separatorBuilder: (context , index ) => SizedBox(
                  height: 20.0,
                ),
                itemCount: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BuildStoryItem() => Container(
        width: 70.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/92823774?v=4"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 11.5,
                ),
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Daif allaf ahmed daif allah samhdana",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
  BuildChatItem() =>Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/92823774?v=4"),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 11.5,
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ahmed ali mahmoud",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "hello word hello word hello word hello word hello wordhello wordhello wordhello wordhello word",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      child: Container(
                        width: 5.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 66, 121, 166),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      "02:00 pm",
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
