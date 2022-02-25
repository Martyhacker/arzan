class CustomFormatter{
  formatDate(String date) {
  String result;
  String time, day, month, year;
  time = date.split('T')[1].split('.')[0];
  day = date.split('T')[0].split('-')[2];
  month = date.split('T')[0].split('-')[1];
  year = date.split('T')[0].split('-')[0];
  result = day + '.' + month + '.' + year;
  return result;
}
}