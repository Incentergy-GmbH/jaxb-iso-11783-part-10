package de.incentergy.iso11783.part10.v4;

public class FlexibleNumberAdapter {
  public static Integer parseStringToInteger(String value) {
    if (value == "") {
        return 0;
    }
    return Integer.parseInt(value);
  }

  public static String printIntegerToString(Integer value) {
      return value.toString();
  }

  public static Long parseStringToLong(String value) {
    if (value == "") {
        return 0L;
    }
    return Long.parseLong(value);
  }

  public static String printLongToString(Long value) {
      return value.toString();
  }
}
