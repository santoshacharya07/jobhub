import 'package:http/http.dart' as https;
import 'package:jobhub/models/response/jobs/get_job.dart';
import 'package:jobhub/models/response/jobs/jobs_response.dart';

import '../config.dart';

class JobsHelper {
  static var client = https.Client();

//
  static Future<List<JobsResponse>> getJobs() async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.https(Config.apiUrl, Config.jobs);

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      var jobList = jobsResponseFromJson(response.body);
      print("Successfulllll");
      return jobList;
    } else {
      print("Failedddd");
      throw Exception("Failed to get the jobs");
    }
  }

//get job single job
  static Future<GetJobRes> getJob(String jobId) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.https(Config.apiUrl, "${Config.jobs}/$jobId");

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      var job = getJobResFromJson(response.body);
      print("Successfulllll");
      return job;
    } else {
      print("Failedddd");
      throw Exception("Failed to get a job");
    }
  }
  ///

  static Future<JobsResponse> getRecent() async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.https(Config.apiUrl, Config.jobs);

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      var jobList = jobsResponseFromJson(response.body);
      var recent = jobList.first;
      return recent;
    } else {
      print("Failedddd");
      throw Exception("Failed to get the jobs");
    }
  }
}
