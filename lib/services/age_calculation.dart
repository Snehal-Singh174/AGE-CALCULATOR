import 'package:age/age.dart';

class AgeCalculation {
  // Calculate Age of a person
  AgeDuration calculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    return age;
  }

  AgeDuration nextBirthday(DateTime today, DateTime birthday) {
    // Calculate NextBirthdate
    DateTime tempDate = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextBirthdayDate = tempDate.isBefore(today)
        ? Age.add(date: tempDate, duration: AgeDuration(years: 1))
        : tempDate;
    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    print(nextBirthdayDate.weekday);
    return nextBirthdayDuration;
  }

  int nextbday(DateTime today, DateTime birthday) {
    //Calculate Next Birthday Weekday
    DateTime tempDate = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextBirthdayDate = tempDate.isBefore(today)
        ? Age.add(date: tempDate, duration: AgeDuration(years: 1))
        : tempDate;
    return nextBirthdayDate.weekday;
  }
}
