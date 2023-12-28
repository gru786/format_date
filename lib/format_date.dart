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
    else if (format == "hh") {
      return hhMmSs[0];
    }
    else if (format == "mm") {
      return hhMmSs[1];
    }
    else if (format == "ss") {
      return hhMmSs[2];
    }

    return "Invalid Format";
  }
  static String formatDate(
      {required DateTime dateTime, String format = "dd-mm-yyyy"}) {
    // 2023-12-27 15:52:04.570
    List<String> dateAndTime = dateTime.toString().split(" ");
    List<String> dateInYyyyMmDd = dateAndTime[0].split("-");
    

    if (format == "dd-mm-yyyy") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[0]}";
    } 
    else if (format == "dd-mm-yy") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[0].substring( 2)}";
    } 
    else if (format == "mm-dd-yyyy") {
      return "${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[0]}";
    }
    else if (format == "mm-dd-yy") {
      return "${dateInYyyyMmDd[1]}-${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[0].substring(2)}";
    } 
    
    else if (format == "dd/mm/yyyy") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[0]}";
    } 
    else if (format == "dd/mm/yy") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[0].substring(2)}";
    } 
    else if (format == "mm/dd/yyyy") {
      return "${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[0]}";
    }
    else if (format == "mm/dd/yy") {
      return "${dateInYyyyMmDd[1]}/${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[0].substring(2)}";
    }

    else if (format == "dd-mm") {
      return "${dateInYyyyMmDd[2]}-${dateInYyyyMmDd[1]}";
    } 
    else if (format == "dd/mm") {
      return "${dateInYyyyMmDd[2]}/${dateInYyyyMmDd[1]}";
    } 
    else if (format == "ddmm") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}";
    } 
    else if (format == "ddmmyyyy") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}${dateInYyyyMmDd[0]}";
    } 
    else if (format == "ddmmyy") {
      return "${dateInYyyyMmDd[2]}${dateInYyyyMmDd[1]}${dateInYyyyMmDd[0].substring(2)}";
    } 
    else if (format == "yyyy") {
      return dateInYyyyMmDd[0];
    }
    else if (format == "yy") {
      return dateInYyyyMmDd[0].substring(2);
    }
    else if (format == "dd") {
      return dateInYyyyMmDd[2];
    }
     else if (format == "mm") {
      return dateInYyyyMmDd[1];
    }

    return "Invalid Format";
  }
}
