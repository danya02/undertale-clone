0x000000:
    if !(== global.armor 48s) goto 0x00002C
0x000014:
    global.wstrength = (- global.wstrength 5s)
0x00002C:
    if !(== global.armor 64s) goto 0x000058
0x000040:
    global.wstrength = (- global.wstrength 10s)
0x000058:
    stog.item[(int32 self.argument0)] = global.armor
    global.armor = self.argument1
    if !(== global.armor 4s) goto 0x0000A8
0x00009C:
    global.adef = 0s
0x0000A8:
    if !(== global.armor 12s) goto 0x0000C8
0x0000BC:
    global.adef = 3s
0x0000C8:
    if !(== global.armor 15s) goto 0x0000E8
0x0000DC:
    global.adef = 7s
0x0000E8:
    if !(== global.armor 24s) goto 0x000108
0x0000FC:
    global.adef = 10s
0x000108:
    if !(== global.armor 44s) goto 0x000128
0x00011C:
    global.adef = 5s
0x000128:
    if !(== global.armor 46s) goto 0x000148
0x00013C:
    global.adef = 11s
0x000148:
    if !(== global.armor 48s) goto 0x000180
0x00015C:
    global.adef = 12s
    global.wstrength = (+ global.wstrength 5s)
0x000180:
    if !(== global.armor 50s) goto 0x0001A0
0x000194:
    global.adef = 15s
0x0001A0:
    if !(== global.armor 53s) goto 0x0001C0
0x0001B4:
    global.adef = 99s
0x0001C0:
    if !(== global.armor 64s) goto 0x0001F8
0x0001D4:
    global.adef = 20s
    global.wstrength = (+ global.wstrength 10s)
0x0001F8:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 82s))
0x000220:
    exit
