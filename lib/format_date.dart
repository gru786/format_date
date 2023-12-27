library format_date;

class FormatDate {

  static String formatTime({required DateTime dateTime, String format = "hh:mm:ss"}){
    // 2023-12-27 15:52:04.570
    List<String> dateAndTime = dateTime.toString().split(" ");
    //List<String> dateInYyyyMmDd = dateAndTime[0].split("-");
    List<String> timeTillSeconds = dateAndTime[1].split(".");
    List<String> hhMmSs = timeTillSeconds[0].split(":");
    if (format == "hh-mm-ss") {
      return "${hhMmSs[0]}-${hhMmSs[1]}-${hhMmSs[2]}";
    }
    else if (format == "hh-mm") {
      return "${hhMmSs[0]}-${hhMmSs[1]}";
    } 
    else if (format == "hh:mm:ss") {
      return "${hhMmSs[0]}:${hhMmSs[1]}:${hhMmSs[2]}";
    } 
    else if (format == "hh:mm:ss.ms") {
      return dateAndTime[1];
    }
    else if (format == "hh:mm") {
      return "${hhMmSs[0]}:${hhMmSs[1]}";
    }

    return "Invalid Format";
  }
  static String formatDate(
      {required DateTime dateTime, String format = "dd-mm-yyyy"}) {
    // 2023-12-27 15:52:04.570
    List<String> dateAndTime = dateTime.toString().split(" ");
    

    if (format == "dd-mm-yyyy") {
      return "${dateAndTime[2]}-${dateAndTime[1]}-${dateAndTime[0]}";
    } 
    else if (format == "dd-mm-yy") {
      return "${dateAndTime[2]}-${dateAndTime[1]}-${dateAndTime[0].substring( 2)}";
    } 
    else if (format == "mm-dd-yyyy") {
      return "${dateAndTime[1]}-${dateAndTime[2]}-${dateAndTime[0]}";
    }
    else if (format == "mm-dd-yy") {
      return "${dateAndTime[1]}-${dateAndTime[2]}-${dateAndTime[0].substring(2)}";
    } 
    
    else if (format == "dd/mm/yyyy") {
      return "${dateAndTime[2]}/${dateAndTime[1]}/${dateAndTime[0]}";
    } 
    else if (format == "dd/mm/yy") {
      return "${dateAndTime[2]}/${dateAndTime[1]}/${dateAndTime[0].substring(2)}";
    } 
    else if (format == "mm/dd/yyyy") {
      return "${dateAndTime[1]}/${dateAndTime[2]}/${dateAndTime[0]}";
    }
    else if (format == "mm/dd/yy") {
      return "${dateAndTime[1]}/${dateAndTime[2]}/${dateAndTime[0].substring(2)}";
    }

    else if (format == "dd-mm") {
      return "${dateAndTime[2]}-${dateAndTime[1]}";
    } 
    else if (format == "dd/mm") {
      return "${dateAndTime[2]}/${dateAndTime[1]}";
    } 
    else if (format == "ddmm") {
      return "${dateAndTime[2]}${dateAndTime[1]}";
    } 
    else if (format == "ddmmyyyy") {
      return "${dateAndTime[2]}${dateAndTime[1]}${dateAndTime[1]}";
    } 
    else if (format == "yyyy") {
      return dateAndTime[0];
    }
    else if (format == "yy") {
      return dateAndTime[0].substring(2);
    }
    else if (format == "dd") {
      return dateAndTime[2];
    }
     else if (format == "mm") {
      return dateAndTime[1];
    }

    return "Invalid Format";
  }
}
