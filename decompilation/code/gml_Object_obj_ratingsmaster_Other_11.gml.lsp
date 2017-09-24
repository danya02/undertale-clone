0x000000:
    if !(== global.armor 4s) goto 0x000030
0x000014:
    push -1s
    push (== 0s:armor_worn 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000058
0x000038:
    stog.armor_worn[0s] = 1s
    self.novel_armor = 1s
0x000058:
    if !(== global.armor 12s) goto 0x000088
0x00006C:
    push -1s
    push (== 1s:armor_worn 0s)
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000B0
0x000090:
    stog.armor_worn[1s] = 1s
    self.novel_armor = 1s
0x0000B0:
    if !(== global.armor 15s) goto 0x0000E0
0x0000C4:
    push -1s
    push (== 2s:armor_worn 0s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x000108
0x0000E8:
    stog.armor_worn[2s] = 1s
    self.novel_armor = 1s
0x000108:
    if !(== global.armor 24s) goto 0x000138
0x00011C:
    push -1s
    push (== 3s:armor_worn 0s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000160
0x000140:
    stog.armor_worn[3s] = 1s
    self.novel_armor = 1s
0x000160:
    if !(== global.armor 44s) goto 0x000190
0x000174:
    push -1s
    push (== 4s:armor_worn 0s)
    goto 0x000194
0x000190:
    push 0s
0x000194:
    if !pop goto 0x0001B8
0x000198:
    stog.armor_worn[4s] = 1s
    self.novel_armor = 1s
0x0001B8:
    if !(== global.armor 46s) goto 0x0001E8
0x0001CC:
    push -1s
    push (== 5s:armor_worn 0s)
    goto 0x0001EC
0x0001E8:
    push 0s
0x0001EC:
    if !pop goto 0x000210
0x0001F0:
    stog.armor_worn[5s] = 1s
    self.novel_armor = 1s
0x000210:
    if !(== global.armor 48s) goto 0x000240
0x000224:
    push -1s
    push (== 6s:armor_worn 0s)
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x000268
0x000248:
    stog.armor_worn[6s] = 1s
    self.novel_armor = 1s
0x000268:
    if !(== global.armor 50s) goto 0x000298
0x00027C:
    push -1s
    push (== 7s:armor_worn 0s)
    goto 0x00029C
0x000298:
    push 0s
0x00029C:
    if !pop goto 0x0002C0
0x0002A0:
    stog.armor_worn[7s] = 1s
    self.novel_armor = 1s
0x0002C0:
    if !(== global.armor 64s) goto 0x0002F0
0x0002D4:
    push -1s
    push (== 8s:armor_worn 0s)
    goto 0x0002F4
0x0002F0:
    push 0s
0x0002F4:
    if !pop goto 0x000318
0x0002F8:
    stog.armor_worn[8s] = 1s
    self.novel_armor = 1s
0x000318:
    exit
