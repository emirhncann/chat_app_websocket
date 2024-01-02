import 'package:chat_app_flutter/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('kullanicilar').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        var currentUser = FirebaseAuth.instance.currentUser;
        var myEmail = currentUser?.email;

        List<Widget> userList = [];

        for (var user in snapshot.data!.docs) {
          var userData = user.data() as Map<String, dynamic>;
          var userName = userData['name'];
          var userSurname = userData['surname'];
          var userEmail = userData['email'];
          var isOnline = userData['isOnline'] ?? true;

          if (myEmail != null && userEmail != null && myEmail != userEmail) {
            userList.add(
              InkWell(
                onTap: () {
                  var otherUserEmail = userEmail;
                  var currentUserEmail =
                      FirebaseAuth.instance.currentUser?.email;

                  String generateGUID() {
                    var uuid = Uuid();
                    return uuid.v4();
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        chatDocumentId: generateGUID(),
                        userName: userName,
                        userSurname: userSurname,
                        userEmail: userEmail,
                        from: '',
                        to: '',
                        message: '',
                        timestamp: '',
                      ),
                    ),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.all(8),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$userName $userSurname',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '$userEmail',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('Kullanıcılar'),
          ),
          body: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              return userList[index];
            },
          ),
        );
      },
    );
  }
}
