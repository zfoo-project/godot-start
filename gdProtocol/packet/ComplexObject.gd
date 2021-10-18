# 复杂的对象
# 包括了各种复杂的结构，数组，List，Set，Map
#
# @author jaysunxiao
# @version 3.0
# byte类型，最简单的整形
var a # byte
# byte的包装类型
# 优先使用基础类型，包装类型会有装箱拆箱
var aa # java.lang.Byte
# 数组类型
var aaa # byte[]
var aaaa # java.lang.Byte[]
var b # short
var bb # java.lang.Short
var bbb # short[]
var bbbb # java.lang.Short[]
var c # int
var cc # java.lang.Integer
var ccc # int[]
var cccc # java.lang.Integer[]
var d # long
var dd # java.lang.Long
var ddd # long[]
var dddd # java.lang.Long[]
var e # float
var ee # java.lang.Float
var eee # float[]
var eeee # java.lang.Float[]
var f # double
var ff # java.lang.Double
var fff # double[]
var ffff # java.lang.Double[]
var g # boolean
var gg # java.lang.Boolean
var ggg # boolean[]
var gggg # java.lang.Boolean[]
var h # char
var hh # java.lang.Character
var hhh # char[]
var hhhh # java.lang.Character[]
var jj # java.lang.String
var jjj # java.lang.String[]
var kk # com.zfoo.protocol.packet.ObjectA
var kkk # com.zfoo.protocol.packet.ObjectA[]
var l # java.util.List<java.lang.Integer>
var ll # java.util.List<java.util.List<java.util.List<java.lang.Integer>>>
var lll # java.util.List<java.util.List<com.zfoo.protocol.packet.ObjectA>>
var llll # java.util.List<java.lang.String>
var lllll # java.util.List<java.util.Map<java.lang.Integer, java.lang.String>>
var m # java.util.Map<java.lang.Integer, java.lang.String>
var mm # java.util.Map<java.lang.Integer, com.zfoo.protocol.packet.ObjectA>
var mmm # java.util.Map<com.zfoo.protocol.packet.ObjectA, java.util.List<java.lang.Integer>>
var mmmm # java.util.Map<java.util.List<java.util.List<com.zfoo.protocol.packet.ObjectA>>, java.util.List<java.util.List<java.util.List<java.lang.Integer>>>>
var mmmmm # java.util.Map<java.util.List<java.util.Map<java.lang.Integer, java.lang.String>>, java.util.Set<java.util.Map<java.lang.Integer, java.lang.String>>>
var s # java.util.Set<java.lang.Integer>
var ss # java.util.Set<java.util.Set<java.util.List<java.lang.Integer>>>
var sss # java.util.Set<java.util.Set<com.zfoo.protocol.packet.ObjectA>>
var ssss # java.util.Set<java.lang.String>
var sssss # java.util.Set<java.util.Map<java.lang.Integer, java.lang.String>>

const PROTOCOL_ID = 100

static func write(buffer, packet):
	if (buffer.writePacketFlag(packet)):
		return
	buffer.writeByte(packet.a)
	buffer.writeByte(packet.aa)
	if (packet.aaa == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.aaa.size());
		for element0 in packet.aaa:
			buffer.writeByte(element0)
	if (packet.aaaa == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.aaaa.size());
		for element1 in packet.aaaa:
			buffer.writeByte(element1)
	buffer.writeShort(packet.b)
	buffer.writeShort(packet.bb)
	if (packet.bbb == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.bbb.size());
		for element2 in packet.bbb:
			buffer.writeShort(element2)
	if (packet.bbbb == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.bbbb.size());
		for element3 in packet.bbbb:
			buffer.writeShort(element3)
	buffer.writeInt(packet.c)
	buffer.writeInt(packet.cc)
	if (packet.ccc == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ccc.size());
		for element4 in packet.ccc:
			buffer.writeInt(element4)
	if (packet.cccc == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.cccc.size());
		for element5 in packet.cccc:
			buffer.writeInt(element5)
	buffer.writeLong(packet.d)
	buffer.writeLong(packet.dd)
	if (packet.ddd == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ddd.size());
		for element6 in packet.ddd:
			buffer.writeLong(element6)
	if (packet.dddd == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.dddd.size());
		for element7 in packet.dddd:
			buffer.writeLong(element7)
	buffer.writeFloat(packet.e)
	buffer.writeFloat(packet.ee)
	if (packet.eee == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.eee.size());
		for element8 in packet.eee:
			buffer.writeFloat(element8)
	if (packet.eeee == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.eeee.size());
		for element9 in packet.eeee:
			buffer.writeFloat(element9)
	buffer.writeDouble(packet.f)
	buffer.writeDouble(packet.ff)
	if (packet.fff == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.fff.size());
		for element10 in packet.fff:
			buffer.writeDouble(element10)
	if (packet.ffff == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ffff.size());
		for element11 in packet.ffff:
			buffer.writeDouble(element11)
	buffer.writeBool(packet.g)
	buffer.writeBool(packet.gg)
	if (packet.ggg == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ggg.size());
		for element12 in packet.ggg:
			buffer.writeBool(element12)
	if (packet.gggg == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.gggg.size());
		for element13 in packet.gggg:
			buffer.writeBool(element13)
	buffer.writeChar(packet.h)
	buffer.writeChar(packet.hh)
	if (packet.hhh == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.hhh.size());
		for element14 in packet.hhh:
			buffer.writeChar(element14)
	if (packet.hhhh == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.hhhh.size());
		for element15 in packet.hhhh:
			buffer.writeChar(element15)
	buffer.writeString(packet.jj)
	if (packet.jjj == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.jjj.size());
		for element16 in packet.jjj:
			buffer.writeString(element16)
	buffer.writePacket(packet.kk, 102);
	if (packet.kkk == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.kkk.size());
		for element17 in packet.kkk:
			buffer.writePacket(element17, 102);
	if (packet.l == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.l.size());
		for element18 in packet.l:
			buffer.writeInt(element18)
	if (packet.ll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ll.size());
		for element19 in packet.ll:
			if (element19 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element19.size());
				for element20 in element19:
					if (element20 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element20.size());
						for element21 in element20:
							buffer.writeInt(element21)
	if (packet.lll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.lll.size());
		for element22 in packet.lll:
			if (element22 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element22.size());
				for element23 in element22:
					buffer.writePacket(element23, 102);
	if (packet.llll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.llll.size());
		for element24 in packet.llll:
			buffer.writeString(element24)
	if (packet.lllll == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.lllll.size());
		for element25 in packet.lllll:
			if (element25 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element25.size())
				for key26 in element25:
					var value27 = element25[key26]
					buffer.writeInt(key26)
					buffer.writeString(value27)
	if (packet.m == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.m.size())
		for key28 in packet.m:
			var value29 = packet.m[key28]
			buffer.writeInt(key28)
			buffer.writeString(value29)
	if (packet.mm == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.mm.size())
		for key30 in packet.mm:
			var value31 = packet.mm[key30]
			buffer.writeInt(key30)
			buffer.writePacket(value31, 102);
	if (packet.mmm == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.mmm.size())
		for key32 in packet.mmm:
			var value33 = packet.mmm[key32]
			buffer.writePacket(key32, 102);
			if (value33 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(value33.size());
				for element34 in value33:
					buffer.writeInt(element34)
	if (packet.mmmm == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.mmmm.size())
		for key35 in packet.mmmm:
			var value36 = packet.mmmm[key35]
			if (key35 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(key35.size());
				for element37 in key35:
					if (element37 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element37.size());
						for element38 in element37:
							buffer.writePacket(element38, 102);
			if (value36 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(value36.size());
				for element39 in value36:
					if (element39 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element39.size());
						for element40 in element39:
							if (element40 == null):
								buffer.writeInt(0)
							else:
								buffer.writeInt(element40.size());
								for element41 in element40:
									buffer.writeInt(element41)
	if (packet.mmmmm == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.mmmmm.size())
		for key42 in packet.mmmmm:
			var value43 = packet.mmmmm[key42]
			if (key42 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(key42.size());
				for element44 in key42:
					if (element44 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element44.size())
						for key45 in element44:
							var value46 = element44[key45]
							buffer.writeInt(key45)
							buffer.writeString(value46)
			if (value43 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(value43.size());
				for element47 in value43:
					if (element47 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element47.size())
						for key48 in element47:
							var value49 = element47[key48]
							buffer.writeInt(key48)
							buffer.writeString(value49)
	if (packet.s == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.s.size());
		for element50 in packet.s:
			buffer.writeInt(element50)
	if (packet.ss == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ss.size());
		for element51 in packet.ss:
			if (element51 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element51.size());
				for element52 in element51:
					if (element52 == null):
						buffer.writeInt(0)
					else:
						buffer.writeInt(element52.size());
						for element53 in element52:
							buffer.writeInt(element53)
	if (packet.sss == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.sss.size());
		for element54 in packet.sss:
			if (element54 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element54.size());
				for element55 in element54:
					buffer.writePacket(element55, 102);
	if (packet.ssss == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.ssss.size());
		for element56 in packet.ssss:
			buffer.writeString(element56)
	if (packet.sssss == null):
		buffer.writeInt(0)
	else:
		buffer.writeInt(packet.sssss.size());
		for element57 in packet.sssss:
			if (element57 == null):
				buffer.writeInt(0)
			else:
				buffer.writeInt(element57.size())
				for key58 in element57:
					var value59 = element57[key58]
					buffer.writeInt(key58)
					buffer.writeString(value59)


static func read(buffer):
	if (!buffer.readBool()):
		return null
	var packet = buffer.newInstance(100)
	var result60 = buffer.readByte()
	packet.a = result60
	var result61 = buffer.readByte()
	packet.aa = result61
	var result62 = []
	var size64 = buffer.readInt()
	if (size64 > 0):
		for index63 in range(size64):
			var result65 = buffer.readByte()
			result62.append(result65)
	packet.aaa = result62
	var result66 = []
	var size68 = buffer.readInt()
	if (size68 > 0):
		for index67 in range(size68):
			var result69 = buffer.readByte()
			result66.append(result69)
	packet.aaaa = result66
	var result70 = buffer.readShort()
	packet.b = result70
	var result71 = buffer.readShort()
	packet.bb = result71
	var result72 = []
	var size74 = buffer.readInt()
	if (size74 > 0):
		for index73 in range(size74):
			var result75 = buffer.readShort()
			result72.append(result75)
	packet.bbb = result72
	var result76 = []
	var size78 = buffer.readInt()
	if (size78 > 0):
		for index77 in range(size78):
			var result79 = buffer.readShort()
			result76.append(result79)
	packet.bbbb = result76
	var result80 = buffer.readInt()
	packet.c = result80
	var result81 = buffer.readInt()
	packet.cc = result81
	var result82 = []
	var size84 = buffer.readInt()
	if (size84 > 0):
		for index83 in range(size84):
			var result85 = buffer.readInt()
			result82.append(result85)
	packet.ccc = result82
	var result86 = []
	var size88 = buffer.readInt()
	if (size88 > 0):
		for index87 in range(size88):
			var result89 = buffer.readInt()
			result86.append(result89)
	packet.cccc = result86
	var result90 = buffer.readLong()
	packet.d = result90
	var result91 = buffer.readLong()
	packet.dd = result91
	var result92 = []
	var size94 = buffer.readInt()
	if (size94 > 0):
		for index93 in range(size94):
			var result95 = buffer.readLong()
			result92.append(result95)
	packet.ddd = result92
	var result96 = []
	var size98 = buffer.readInt()
	if (size98 > 0):
		for index97 in range(size98):
			var result99 = buffer.readLong()
			result96.append(result99)
	packet.dddd = result96
	var result100 = buffer.readFloat()
	packet.e = result100
	var result101 = buffer.readFloat()
	packet.ee = result101
	var result102 = []
	var size104 = buffer.readInt()
	if (size104 > 0):
		for index103 in range(size104):
			var result105 = buffer.readFloat()
			result102.append(result105)
	packet.eee = result102
	var result106 = []
	var size108 = buffer.readInt()
	if (size108 > 0):
		for index107 in range(size108):
			var result109 = buffer.readFloat()
			result106.append(result109)
	packet.eeee = result106
	var result110 = buffer.readDouble()
	packet.f = result110
	var result111 = buffer.readDouble()
	packet.ff = result111
	var result112 = []
	var size114 = buffer.readInt()
	if (size114 > 0):
		for index113 in range(size114):
			var result115 = buffer.readDouble()
			result112.append(result115)
	packet.fff = result112
	var result116 = []
	var size118 = buffer.readInt()
	if (size118 > 0):
		for index117 in range(size118):
			var result119 = buffer.readDouble()
			result116.append(result119)
	packet.ffff = result116
	var result120 = buffer.readBool() 
	packet.g = result120
	var result121 = buffer.readBool() 
	packet.gg = result121
	var result122 = []
	var size124 = buffer.readInt()
	if (size124 > 0):
		for index123 in range(size124):
			var result125 = buffer.readBool() 
			result122.append(result125)
	packet.ggg = result122
	var result126 = []
	var size128 = buffer.readInt()
	if (size128 > 0):
		for index127 in range(size128):
			var result129 = buffer.readBool() 
			result126.append(result129)
	packet.gggg = result126
	var result130 = buffer.readChar()
	packet.h = result130
	var result131 = buffer.readChar()
	packet.hh = result131
	var result132 = []
	var size134 = buffer.readInt()
	if (size134 > 0):
		for index133 in range(size134):
			var result135 = buffer.readChar()
			result132.append(result135)
	packet.hhh = result132
	var result136 = []
	var size138 = buffer.readInt()
	if (size138 > 0):
		for index137 in range(size138):
			var result139 = buffer.readChar()
			result136.append(result139)
	packet.hhhh = result136
	var result140 = buffer.readString()
	packet.jj = result140
	var result141 = []
	var size143 = buffer.readInt()
	if (size143 > 0):
		for index142 in range(size143):
			var result144 = buffer.readString()
			result141.append(result144)
	packet.jjj = result141
	var result145 = buffer.readPacket(102)
	packet.kk = result145
	var result146 = []
	var size148 = buffer.readInt()
	if (size148 > 0):
		for index147 in range(size148):
			var result149 = buffer.readPacket(102)
			result146.append(result149)
	packet.kkk = result146
	var result150 = []
	var size152 = buffer.readInt()
	if (size152 > 0):
		for index151 in range(size152):
			var result153 = buffer.readInt()
			result150.append(result153)
	packet.l = result150
	var result154 = []
	var size156 = buffer.readInt()
	if (size156 > 0):
		for index155 in range(size156):
			var result157 = []
			var size159 = buffer.readInt()
			if (size159 > 0):
				for index158 in range(size159):
					var result160 = []
					var size162 = buffer.readInt()
					if (size162 > 0):
						for index161 in range(size162):
							var result163 = buffer.readInt()
							result160.append(result163)
					result157.append(result160)
			result154.append(result157)
	packet.ll = result154
	var result164 = []
	var size166 = buffer.readInt()
	if (size166 > 0):
		for index165 in range(size166):
			var result167 = []
			var size169 = buffer.readInt()
			if (size169 > 0):
				for index168 in range(size169):
					var result170 = buffer.readPacket(102)
					result167.append(result170)
			result164.append(result167)
	packet.lll = result164
	var result171 = []
	var size173 = buffer.readInt()
	if (size173 > 0):
		for index172 in range(size173):
			var result174 = buffer.readString()
			result171.append(result174)
	packet.llll = result171
	var result175 = []
	var size177 = buffer.readInt()
	if (size177 > 0):
		for index176 in range(size177):
			var result178 = {}
			var size179 = buffer.readInt()
			if (size179 > 0):
				for index180 in range(size179):
					var result181 = buffer.readInt()
					var result182 = buffer.readString()
					result178[result181] = result182
			result175.append(result178)
	packet.lllll = result175
	var result183 = {}
	var size184 = buffer.readInt()
	if (size184 > 0):
		for index185 in range(size184):
			var result186 = buffer.readInt()
			var result187 = buffer.readString()
			result183[result186] = result187
	packet.m = result183
	var result188 = {}
	var size189 = buffer.readInt()
	if (size189 > 0):
		for index190 in range(size189):
			var result191 = buffer.readInt()
			var result192 = buffer.readPacket(102)
			result188[result191] = result192
	packet.mm = result188
	var result193 = {}
	var size194 = buffer.readInt()
	if (size194 > 0):
		for index195 in range(size194):
			var result196 = buffer.readPacket(102)
			var result197 = []
			var size199 = buffer.readInt()
			if (size199 > 0):
				for index198 in range(size199):
					var result200 = buffer.readInt()
					result197.append(result200)
			result193[result196] = result197
	packet.mmm = result193
	var result201 = {}
	var size202 = buffer.readInt()
	if (size202 > 0):
		for index203 in range(size202):
			var result204 = []
			var size206 = buffer.readInt()
			if (size206 > 0):
				for index205 in range(size206):
					var result207 = []
					var size209 = buffer.readInt()
					if (size209 > 0):
						for index208 in range(size209):
							var result210 = buffer.readPacket(102)
							result207.append(result210)
					result204.append(result207)
			var result211 = []
			var size213 = buffer.readInt()
			if (size213 > 0):
				for index212 in range(size213):
					var result214 = []
					var size216 = buffer.readInt()
					if (size216 > 0):
						for index215 in range(size216):
							var result217 = []
							var size219 = buffer.readInt()
							if (size219 > 0):
								for index218 in range(size219):
									var result220 = buffer.readInt()
									result217.append(result220)
							result214.append(result217)
					result211.append(result214)
			result201[result204] = result211
	packet.mmmm = result201
	var result221 = {}
	var size222 = buffer.readInt()
	if (size222 > 0):
		for index223 in range(size222):
			var result224 = []
			var size226 = buffer.readInt()
			if (size226 > 0):
				for index225 in range(size226):
					var result227 = {}
					var size228 = buffer.readInt()
					if (size228 > 0):
						for index229 in range(size228):
							var result230 = buffer.readInt()
							var result231 = buffer.readString()
							result227[result230] = result231
					result224.append(result227)
			var result232 = []
			var size234 = buffer.readInt()
			if (size234 > 0):
				for index233 in range(size234):
					var result235 = {}
					var size236 = buffer.readInt()
					if (size236 > 0):
						for index237 in range(size236):
							var result238 = buffer.readInt()
							var result239 = buffer.readString()
							result235[result238] = result239
					result232.append(result235)
			result221[result224] = result232
	packet.mmmmm = result221
	var result240 = []
	var size242 = buffer.readInt()
	if (size242 > 0):
		for index241 in range(size242):
			var result243 = buffer.readInt()
			result240.append(result243)
	packet.s = result240
	var result244 = []
	var size246 = buffer.readInt()
	if (size246 > 0):
		for index245 in range(size246):
			var result247 = []
			var size249 = buffer.readInt()
			if (size249 > 0):
				for index248 in range(size249):
					var result250 = []
					var size252 = buffer.readInt()
					if (size252 > 0):
						for index251 in range(size252):
							var result253 = buffer.readInt()
							result250.append(result253)
					result247.append(result250)
			result244.append(result247)
	packet.ss = result244
	var result254 = []
	var size256 = buffer.readInt()
	if (size256 > 0):
		for index255 in range(size256):
			var result257 = []
			var size259 = buffer.readInt()
			if (size259 > 0):
				for index258 in range(size259):
					var result260 = buffer.readPacket(102)
					result257.append(result260)
			result254.append(result257)
	packet.sss = result254
	var result261 = []
	var size263 = buffer.readInt()
	if (size263 > 0):
		for index262 in range(size263):
			var result264 = buffer.readString()
			result261.append(result264)
	packet.ssss = result261
	var result265 = []
	var size267 = buffer.readInt()
	if (size267 > 0):
		for index266 in range(size267):
			var result268 = {}
			var size269 = buffer.readInt()
			if (size269 > 0):
				for index270 in range(size269):
					var result271 = buffer.readInt()
					var result272 = buffer.readString()
					result268[result271] = result272
			result265.append(result268)
	packet.sssss = result265
	return packet
