# @author jaysunxiao
# @version 3.0
var a # byte
var aaa # byte[]
var b # short
var c # int
var d # long
var e # float
var f # double
var g # boolean
var jj # java.lang.String
var kk # com.zfoo.protocol.packet.ObjectA
var l # java.util.List<java.lang.Integer>
var ll # java.util.List<java.lang.Long>
var lll # java.util.List<com.zfoo.protocol.packet.ObjectA>
var llll # java.util.List<java.lang.String>
var m # java.util.Map<java.lang.Integer, java.lang.String>
var mm # java.util.Map<java.lang.Integer, com.zfoo.protocol.packet.ObjectA>
var s # java.util.Set<java.lang.Integer>
var ssss # java.util.Set<java.lang.String>

const PROTOCOL_ID = 101

static func write(buffer, packet):
	if (buffer.writePacketFlag(packet)):
		return
	buffer.writeByte(packet.a)
	if (packet.aaa == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.aaa.size());
		for element0 in packet.aaa:
			buffer.writeByte(element0)
	buffer.writeShort(packet.b)
	buffer.writeInt(packet.c)
	buffer.writeLong(packet.d)
	buffer.writeFloat(packet.e)
	buffer.writeDouble(packet.f)
	buffer.writeBool(packet.g)
	buffer.writeString(packet.jj)
	buffer.writePacket(packet.kk, 102);
	if (packet.l == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.l.size());
		for element1 in packet.l:
			buffer.writeInt(element1)
	if (packet.ll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ll.size());
		for element2 in packet.ll:
			buffer.writeLong(element2)
	if (packet.lll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.lll.size());
		for element3 in packet.lll:
			buffer.writePacket(element3, 102);
	if (packet.llll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.llll.size());
		for element4 in packet.llll:
			buffer.writeString(element4)
	if (packet.m == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.m.size())
		for key5 in packet.m:
			var value6 = packet.m[key5]
			buffer.writeInt(key5)
			buffer.writeString(value6)
	if (packet.mm == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.mm.size())
		for key7 in packet.mm:
			var value8 = packet.mm[key7]
			buffer.writeInt(key7)
			buffer.writePacket(value8, 102);
	if (packet.s == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.s.size());
		for element9 in packet.s:
			buffer.writeInt(element9)
	if (packet.ssss == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ssss.size());
		for element10 in packet.ssss:
			buffer.writeString(element10)


static func read(buffer):
	if (!buffer.readBool()):
		return null
	var packet = buffer.newInstance(101)
	var result11 = buffer.readByte()
	packet.a = result11
	var result12 = []
	var size14 = buffer.readInt()
	if (size14 > 0):
		for index13 in range(size14):
			var result15 = buffer.readByte()
			result12.append(result15)
	packet.aaa = result12
	var result16 = buffer.readShort()
	packet.b = result16
	var result17 = buffer.readInt()
	packet.c = result17
	var result18 = buffer.readLong()
	packet.d = result18
	var result19 = buffer.readFloat()
	packet.e = result19
	var result20 = buffer.readDouble()
	packet.f = result20
	var result21 = buffer.readBool() 
	packet.g = result21
	var result22 = buffer.readString()
	packet.jj = result22
	var result23 = buffer.readPacket(102)
	packet.kk = result23
	var result24 = []
	var size26 = buffer.readInt()
	if (size26 > 0):
		for index25 in range(size26):
			var result27 = buffer.readInt()
			result24.append(result27)
	packet.l = result24
	var result28 = []
	var size30 = buffer.readInt()
	if (size30 > 0):
		for index29 in range(size30):
			var result31 = buffer.readLong()
			result28.append(result31)
	packet.ll = result28
	var result32 = []
	var size34 = buffer.readInt()
	if (size34 > 0):
		for index33 in range(size34):
			var result35 = buffer.readPacket(102)
			result32.append(result35)
	packet.lll = result32
	var result36 = []
	var size38 = buffer.readInt()
	if (size38 > 0):
		for index37 in range(size38):
			var result39 = buffer.readString()
			result36.append(result39)
	packet.llll = result36
	var result40 = {}
	var size41 = buffer.readInt()
	if (size41 > 0):
		for index42 in range(size41):
			var result43 = buffer.readInt()
			var result44 = buffer.readString()
			result40[result43] = result44
	packet.m = result40
	var result45 = {}
	var size46 = buffer.readInt()
	if (size46 > 0):
		for index47 in range(size46):
			var result48 = buffer.readInt()
			var result49 = buffer.readPacket(102)
			result45[result48] = result49
	packet.mm = result45
	var result50 = []
	var size52 = buffer.readInt()
	if (size52 > 0):
		for index51 in range(size52):
			var result53 = buffer.readInt()
			result50.append(result53)
	packet.s = result50
	var result54 = []
	var size56 = buffer.readInt()
	if (size56 > 0):
		for index55 in range(size56):
			var result57 = buffer.readString()
			result54.append(result57)
	packet.ssss = result54
	return packet
