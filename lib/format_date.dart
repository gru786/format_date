library format_date;

///FormatDate class provides two methods for formatting date and time from DateTime object.
///The two functions are:
///formatTime({required DateTime dateTime, String format})
///formatDate({required DateTime dateTime, String format})
class FormatDate {
  ///formatTime expects two parameters, dateTime (DateTime, required)
  ///and format (String, optional, 'hh:mm:ss' by default)
  ///and returns formatted time in String.
  static String formatTime(
      {required DateTime dateTime, String format = "hh:mm:ss"}) {
    /// example dateTime -> 2023-12-27 15:52:04.570

    //date and time list
    List<String> dateAndTime = dateTime.toString().split(" ");

    //just time list
    List<String> timeTillSeconds = dateAndTime[1].split(".");

    //time without milliseconds list
    List<String> hhMmSs = timeTillSeconds[0].split(":");
    if (format == "hh-mm-ss") {
      return "${hhMmSs[0]}-${hhMmSs[1]}-${hhMmSs[2]}";
    } else if (format == "hh-mm") {
      return "${hhMmSs[0]}-${hhMmSs[1]}";
    } else if (format == "hh:mm:ss") {
      return "${hhMmSs[0]}:${hhMmSs[1]}:${hhMmSs[2]}";
    } else if (format == "hh:mm:ss.ms") {
      return dateAndTime[1];
    } else if (format == "hh:mm") {
      return "${hhMmSs[0]}:${hhMmSs[1]}";
    } else if (format == "hh") {
      return hhMmSs[0];
    } else if (format == "mm") {
      return hhMmSs[1];
    } else if (format == "ss") {
      return hhMmSs[2];
    }

    return "Invalid Format";
  }

  ///formatDate expects two parameters, dateTime (DateTime, required)
  ///and format (String, optional, 'dd-mm-yyyy' by default)
  ///and returns formatted date in String.
  static String formatDate(
      {required DateTime dateTime, String format = "dd-mm-yyyy"}) {
    /// example dateTime -> 2023-12-27 15:52:04.570

    //date and time list
    List<String> dateAndTime = dateTime.toString().split(" ");

    //splitted date list
    List<String> dateInYyyyMmDd = dateAndTime[0].split("-");

    if (format == "dd-mm-yyyy") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[0]}";
    } else if (format == "dd-mm-yy") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[0].substring(2)}";
    } else if (format == "mm-dd-yyyy") {
      return "${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[0]}";
    } else if (format == "mm-dd-yy") {
      return "${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[0].substring(2)}";
    } else if (format == "dd/mm/yyyy") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[0]}";
    } else if (format == "dd/mm/yy") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[0].substring(2)}";
    } else if (format == "mm/dd/yyyy") {
      return "${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[0]}";
    } else if (format == "mm/dd/yy") {
      return "${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[0].substring(2)}";
    } else if (format == "dd-mm") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}";
    } else if (format == "dd/mm") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}";
    } else if (format == "ddmm") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}";
    } else if (format == "ddmmyyyy") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}${dateInYyyyMmDd[0]}";
    } else if (format == "ddmmyy") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}${dateInYyyyMmDd[0].substring(2)}";
    } else if (format == "yyyy") {
      return dateInYyyyMmDd[0];
    } else if (format == "yy") {
      return dateInYyyyMmDd[0].substring(2);
    } else if (format == "dd") {
      return dateInYyyyMmDd[2];
    } else if (format == "mm") {
      return dateInYyyyMmDd[1];
    }

    return "Invalid Format";
  }
}
