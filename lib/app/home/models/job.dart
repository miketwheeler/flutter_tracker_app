//
// import 'package:meta/meta.dart';
// import 'package:flutter/foundation.dart';

//
class Job {
  Job({required this.name, required this.ratePerHour});  //required this.id
  // final String id;
  final String name;
  final int ratePerHour;

  factory Job.fromMap(Map<String, dynamic>? data) {
    //String documentId
    if (data == null) {
      throw StateError('missing data for jobId: '); //$documentId');
    }
    final String? name = data['name'];
    if (name == null) {
      throw StateError('missing name for jobId: '); //$documentId');
    }
    final int ratePerHour = data['ratePerHour'];
    return Job(
      // id: documentId,
      name: name,
      ratePerHour: ratePerHour,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ratePerHour': ratePerHour,
    };
  }
}
