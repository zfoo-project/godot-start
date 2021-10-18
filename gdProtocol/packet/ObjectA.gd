# @author jaysunxiao
# @version 3.0
var a # int
var m # java.util.Map<java.lang.Integer, java.lang.String>
var objectB # com.zfoo.protocol.packet.ObjectB

const PROTOCOL_ID = 102

static func write(buffer, packet):
	if (buffer.writePacketFlag(packet)):
		return
	buffer.writeInt(packet.a)
	if (packet.m == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.m.size())
		for key0 in packet.m:
			var value1 = packet.m[key0]
			buffer.writeInt(key0)
			buffer.writeString(value1)
	buffer.writePacket(packet.objectB, 103);


static func read(buffer):
	if (!buffer.readBool()):
		return null
	var packet = buffer.newInstance(102)
	var result2 = buffer.readInt()
	packet.a = result2
	var result3 = {}
	var size4 = buffer.readInt()
	if (size4 > 0):
		for index5 in range(size4):
			var result6 = buffer.readInt()
			var result7 = buffer.readString()
			result3[result6] = result7
	packet.m = result3
	var result8 = buffer.readPacket(103)
	packet.objectB = result8
	return packet
