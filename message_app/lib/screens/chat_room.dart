import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff051B12),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chat With\nfriends',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 13),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Color(0xff61646E).withOpacity(.3),
                      child: Icon(Icons.search, size: 32),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      height: 72,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          _build(
                              'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e'
                              '?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80'),
                          _build(
                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2'
                              '.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'),
                          _build(
                              'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2'
                              '.'
                              '1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=335&q=80'),
                          _build(
                              'https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=r'
                              'b-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'),
                          _build(
                              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                          _build(
                              'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcH'
                              'BfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: Colors.yellow[800],
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(width: 7),
                        FlatButton(
                          onPressed: () {},
                          child: Text('Messages'),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Calls'),
                      textColor: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Groups'),
                      textColor: Colors.white,
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)),
                      onPressed: () {},
                      color: Color(0xff61646E).withOpacity(.3),
                      child: Text('Create'),
                      textColor: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              children: [
                _buildFrends(
                    name: 'Shae Haq',
                    profile:
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?i'
                        'xlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                    recentMessage: 'Hi! There Are you avilable for talk?',
                    resentMsg: true,
                    resentMsgCount: 3,
                    lastActive: '12:00'),
                _buildFrends(
                    name: 'Shae Haq',
                    profile:
                        'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e'
                        '?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80',
                    recentMessage: 'Hi! There Are you avilable for talk?',
                    resentMsg: false,
                    lastActive: '12:00'),
                _buildFrends(
                  name: 'gnsisn Hdsaq',
                  profile:
                      'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2'
                      '.'
                      '1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=335&q=80',
                  recentMessage: 'Hi! There Are you avilable for talk?',
                  resentMsg: false,
                  lastActive: '12:00',
                ),
                _buildFrends(
                  name: 'dsdhae Haqd',
                  profile:
                      'https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=r'
                      'b-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80',
                  resentMsg: true,
                  resentMsgCount: 7,
                  recentMessage: 'Hi! There Ale for talk?',
                  lastActive: '12:00',
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  _build(String profile) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 32,
        backgroundImage: NetworkImage(profile),
        backgroundColor: Color(0xff61646E).withOpacity(.3),
      ),
    );
  }

  _buildFrends({
    String name,
    String recentMessage,
    String profile,
    String lastActive,
    bool resentMsg,
    int resentMsgCount,
  }) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(profile),
            backgroundColor: Color(0xff61646E).withOpacity(.3),
          ),
          resentMsg
              ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 4),
                  height: 20,
                  width: 20,
                  child: Text(
                    resentMsgCount.toString() ?? '',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              : Text('')
        ],
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 22, color: Color(0xff051B12)),
      ),
      subtitle: Text(recentMessage),
      trailing: Text(lastActive),
    );
  }
}
