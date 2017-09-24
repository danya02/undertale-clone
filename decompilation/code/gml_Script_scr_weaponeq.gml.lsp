0x000000:
    if !(== global.weapon 14s) goto 0x000044
0x000014:
    if !(== global.inbattle 1s) goto 0x000044
0x000028:
    push -5s
    push (== 78s:flag 1s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x00006C
0x00004C:
    global.at = (+ 8s (* global.lv 2s))
0x00006C:
    stog.item[(int32 self.argument0)] = global.weapon
    global.weapon = self.argument1
    if !(== global.weapon 3s) goto 0x0000BC
0x0000B0:
    global.wstrength = 0s
0x0000BC:
    if !(== global.weapon 13s) goto 0x0000DC
0x0000D0:
    global.wstrength = 3s
0x0000DC:
    if !(== global.weapon 14s) goto 0x0000FC
0x0000F0:
    global.wstrength = 5s
0x0000FC:
    if !(== global.weapon 25s) goto 0x00011C
0x000110:
    global.wstrength = 7s
0x00011C:
    if !(== global.weapon 45s) goto 0x00013C
0x000130:
    global.wstrength = 2s
0x00013C:
    if !(== global.weapon 47s) goto 0x00015C
0x000150:
    global.wstrength = 10s
0x00015C:
    if !(== global.weapon 49s) goto 0x00017C
0x000170:
    global.wstrength = 12s
0x00017C:
    if !(== global.weapon 51s) goto 0x00019C
0x000190:
    global.wstrength = 15s
0x00019C:
    if !(== global.weapon 52s) goto 0x0001BC
0x0001B0:
    global.wstrength = 99s
0x0001BC:
    if !(== global.armor 48s) goto 0x0001E8
0x0001D0:
    global.wstrength = (+ global.wstrength 5s)
0x0001E8:
    if !(== global.armor 64s) goto 0x000214
0x0001FC:
    global.wstrength = (+ global.wstrength 10s)
0x000214:
    call (script_execute[]:int32 (var 75s))
    call (script_execute[]:int32 (var 82s))
0x00023C:
    exit
