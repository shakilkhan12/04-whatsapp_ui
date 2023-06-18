import 'package:flutter/material.dart';

class UserMessages {
  final String name;
  final String message;
  final String image;

  UserMessages(
      {required this.name, required this.message, required this.image});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<UserMessages> userMessages = [
    UserMessages(
        name: 'John Doe',
        message: 'Hello ali how are you?',
        image:
            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'Jane Smith',
        message: 'Lets come to Dubai on vocations',
        image:
            'https://images.pexels.com/photos/1793306/pexels-photo-1793306.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'Bob Johnson',
        message: 'Okay brother see you later.',
        image:
            'https://images.pexels.com/photos/2955247/pexels-photo-2955247.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
    UserMessages(
        name: 'Nadir Ali',
        message: 'Okay I will contact you later ',
        image:
            'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'Saddiq Khan',
        message: 'What are you doing these days?',
        image:
            'https://images.pexels.com/photos/6283217/pexels-photo-6283217.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
    UserMessages(
        name: 'Shakil Khan',
        message: 'Okay brother.',
        image:
            'https://images.pexels.com/photos/9409243/pexels-photo-9409243.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
    UserMessages(
        name: 'Bilal Khan',
        message: 'He is here dear.',
        image:
            'https://images.pexels.com/photos/8159657/pexels-photo-8159657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'John Doe',
        message: 'Hello ali how are you?',
        image:
            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'Jane Smith',
        message: 'Lets come to Dubai on vocations',
        image:
            'https://images.pexels.com/photos/1793306/pexels-photo-1793306.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserMessages(
        name: 'Bob Johnson',
        message: 'Okay brother see you later.',
        image:
            'https://images.pexels.com/photos/2955247/pexels-photo-2955247.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp Business',
            style: TextStyle(fontSize: 15),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                // Handle camera icon tap
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search icon tap
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.more_vert),
            //   onPressed: () {
            //     // Handle toggle icon tap
            //   },
            // ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => const [
                PopupMenuItem(child: Text('New Group'), value: '1'),
                PopupMenuItem(child: Text('Setting'), value: '2'),
                PopupMenuItem(child: Text('Logout'), value: '3'),
              ],
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.print),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: userMessages.length,
              itemBuilder: (BuildContext context, int index) {
                UserMessages userMessage = userMessages[index];

                return ListTile(
                  title: Text(
                    userMessage.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                        fontSize: 15),
                  ),
                  subtitle: Text(userMessage.message),
                  trailing: Text('11:03 PM'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(userMessage.image.toString()),
                  ),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        // alignment:
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2955247/pexels-photo-2955247.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'), // Replace with your profile image asset
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    // Add button onPressed action
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Status',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Tab to add status update'),
                      ],
                    ),
                  ],
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: userMessages.length,
                  itemBuilder: (BuildContext context, int index) {
                    UserMessages userMessage = userMessages[index];

                    return ListTile(
                      title: Text(
                        userMessage.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                            fontSize: 15),
                      ),
                      subtitle: Text(userMessage.message),
                      trailing: Text('11:03 PM'),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(userMessage.image.toString()),
                      ),
                    );
                  },
                ))
              ],
            ),
            ListView.builder(
              itemCount: userMessages.length,
              itemBuilder: (BuildContext context, int index) {
                UserMessages userMessage = userMessages[index];

                return ListTile(
                  title: Text(
                    userMessage.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                        fontSize: 15),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.arrow_outward, color: Colors.red),
                      SizedBox(
                        width: 10,
                      ),
                      index == 3 || index == 6 || index == 9
                          ? Text('You missed audio call')
                          : Text('You missed video call')
                    ],
                  ),
                  trailing: index == 3 || index == 6 || index == 9
                      ? Icon(Icons.phone)
                      : Icon(Icons.video_call),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(userMessage.image.toString()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
