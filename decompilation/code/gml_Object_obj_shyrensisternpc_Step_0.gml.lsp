0x000000:
    self.buffer = (- self.buffer 1s)
    if !(> self.buffer 0s) goto 0x000040
0x00002C:
    push (== self.myinteract 1s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.myinteract = 0s
0x000054:
    if !(== self.myinteract 1s) goto 0x00007C
0x000068:
    push (== global.interact 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x00017C
0x000084:
    call (caster_play[]:int32 (var 0.6d) (var 0.6d) (var 338s))
    self.myinteract = 2s
    global.interact = 1s
    self.image_speed = 0.2d
    self.sistext = (instance_create[]:int32 (var 1516s) (var 0s) (var 0s))
    if !(== self.talkedto 1s) goto 0x000144
0x000120:
    pushenv (int32 self.sistext) 0x000140
0x000130:
    self.phrase = "Part of me wants to#see my new \"brother\"#Aaron. "
0x000140:
    popenv 0x000130
0x000144:
    if !(== self.talkedto 2s) goto 0x00017C
0x000158:
    pushenv (int32 self.sistext) 0x000178
0x000168:
    self.phrase = "But most other parts#of me... don't. "
0x000178:
    popenv 0x000168
0x00017C:
    if !(== self.myinteract 2s) goto 0x000220
0x000190:
    if !(~ (bool (instance_exists[]:int32 self.sistext))) goto 0x000220
0x0001AC:
    self.talkedto = (+ self.talkedto 1s)
    if !(== self.talkedto 3s) goto 0x0001E4
0x0001D8:
    self.talkedto = 0s
0x0001E4:
    self.image_speed = 0s
    self.image_index = 0s
    self.myinteract = 0s
    global.interact = 0s
    self.buffer = 4s
0x000220:
    exit
