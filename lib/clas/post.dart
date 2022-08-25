import 'package:flutter/material.dart';

class post extends StatelessWidget {
  const post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var snapshot;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.builder(
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3,
                    right: 3,
                  ),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      snapshot.data!.docChanges[index].doc['title'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
