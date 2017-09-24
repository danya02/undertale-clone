0x000000:
    if !(!= self.attackyou 3s) goto 0x000084
0x000014:
    if !(== 198.conversation 3s) goto 0x000034
0x000028:
    [obj_floweybattle1].conversation = 5s
0x000034:
    if !(== 198.conversation 8s) goto 0x000054
0x000048:
    [obj_floweybattle1].conversation = 9s
0x000054:
    if !(== 198.conversation 9.4d) goto 0x000084
0x000070:
    [obj_floweybattle1].conversation = 9.5d
0x000084:
    exit
