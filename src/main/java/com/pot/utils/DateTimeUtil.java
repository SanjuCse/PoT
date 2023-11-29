package com.pot.utils;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;

public class DateTimeUtil {
	public static LocalDateTime getCurrentUtcDateTime(LocalDateTime ldt) {
		ZonedDateTime ldtZoned = ldt.atZone(ZoneId.systemDefault());
		ZonedDateTime utcZoned = ldtZoned.withZoneSameInstant(ZoneId.of("UTC"));
		return utcZoned.toLocalDateTime();
	}
}
