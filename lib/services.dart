




import 'package:cloud_firestore/cloud_firestore.dart';

Future<void>add_student({required String name,required String age,required String phone, required String department})
async
{await FirebaseFirestore.instance.collection("students").add({"Name": name,"Age":age,"Department": department,"Phone": phone});}