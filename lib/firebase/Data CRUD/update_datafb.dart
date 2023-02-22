//updating student data

Future<void> updateUser(id, name, cnic, number, status, date, members) {
  return members
      .doc(id)
      .update({
        'name': name,
        'cnic': cnic,
        'number': number,
        'status': status,
        'date': date
      })
      .then((value) => print("Member detaile's Updated"))
      .catchError((error) => print("Failed to Update Details!!: $error"));
}
