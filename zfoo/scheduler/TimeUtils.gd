extends Object

const timestamp = [0]


# 获取精确的时间戳
static func currentTimeMillis() -> int:
	var currentTimeMillis = OS.get_system_time_msecs()
	timestamp[0] = currentTimeMillis
	return currentTimeMillis


# 获取最多只有一秒延迟的粗略时间戳，适用于对时间精度要求不高的场景，最多只有一秒误差
static func now() -> int:
	return timestamp[0]
