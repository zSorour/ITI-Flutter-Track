String getFormattedTime(int timeInSeconds) {
  int hours, minutes, seconds;
  //I use ~/ which for integer division without errors in type casting
  hours = timeInSeconds ~/ 3600;
  minutes = (timeInSeconds - hours * 3600) ~/ 60;
  seconds = (timeInSeconds - (hours * 3600) - (minutes * 60));
  String formattedSeconds = seconds.toString().padLeft(2, '0');
  return ('$minutes:$formattedSeconds');
}
