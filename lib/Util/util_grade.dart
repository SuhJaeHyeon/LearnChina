enum eGrade{
  grade_00,
  grade_02,
  grade_10,
  grade_12,
  grade_20,
  grade_30,
  grade_32,
  grade_40,
  grade_42,
  grade_50,
  grade_52,
  grade_60,
  grade_62,
  grade_70,
  grade_72,
  grade_80,
}

String getGradeName(eGrade grade) {
  switch (grade) {
    case eGrade.grade_00:
      return "특급";
    case eGrade.grade_02:
      return "준 특급";
    case eGrade.grade_10:
      return "1급";
    case eGrade.grade_12:
      return "준 1급";
    case eGrade.grade_20:
      return "2급";
    case eGrade.grade_30:
      return "3급";
    case eGrade.grade_32:
      return "준 4급";
    case eGrade.grade_40:
      return "4급";
    case eGrade.grade_42:
      return "준 4급";
    case eGrade.grade_50:
      return "5급";
    case eGrade.grade_52:
      return "준 5급";
    case eGrade.grade_60:
      return "6급";
    case eGrade.grade_62:
      return "준 6급";
    case eGrade.grade_70:
      return "7급";
    case eGrade.grade_72:
      return "준 7급";
    case eGrade.grade_80:
      return "8급";
  }
}
String getGradeCode(eGrade grade) {
  switch (grade) {
    case eGrade.grade_00:
      return "00";
    case eGrade.grade_02:
      return "02";
    case eGrade.grade_10:
      return "10";
    case eGrade.grade_12:
      return "12";
    case eGrade.grade_20:
      return "20";
    case eGrade.grade_30:
      return "30";
    case eGrade.grade_32:
      return "32";
    case eGrade.grade_40:
      return "40";
    case eGrade.grade_42:
      return "42";
    case eGrade.grade_50:
      return "50";
    case eGrade.grade_52:
      return "52";
    case eGrade.grade_60:
      return "60";
    case eGrade.grade_62:
      return "62";
    case eGrade.grade_70:
      return "70";
    case eGrade.grade_72:
      return "72";
    case eGrade.grade_80:
      return "80";
    default:
      return "";
  }
}