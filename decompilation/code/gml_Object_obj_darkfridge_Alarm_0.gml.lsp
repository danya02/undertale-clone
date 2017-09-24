0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It's empty.)/%%"
    if !(> self.x 242s) goto 0x0000B4
0x000068:
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It seems to contain&  samples of some kind.)/%%"
    push -5s
    if !(== 490s:flag 0s) goto 0x0000B4
0x00009C:
    stog.msg[0s] = "* There's something here..^1.&* It feels like it's&  breathing./%%"
0x0000B4:
    if !(> self.x 340s) goto 0x000114
0x0000C8:
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It's empty.)/%%"
    push -5s
    if !(== 490s:flag 0s) goto 0x000114
0x0000FC:
    stog.msg[0s] = "* There's something here..^1.&* It feels like a tree^1, ripe&  with delicious fruit./%%"
0x000114:
    if !(> self.x 440s) goto 0x000174
0x000128:
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It seems to contain&  samples of some kind.)/%%"
    push -5s
    if !(== 490s:flag 0s) goto 0x000174
0x00015C:
    stog.msg[0s] = "* There's something here..^1.&* Something in the shape&  of a man./%%"
0x000174:
    if !(> self.x 530s) goto 0x0001D4
0x000188:
    stog.msg[0s] = "* (It's a refrigerator.^1)&* (It's empty.)/%%"
    push -5s
    if !(== 490s:flag 0s) goto 0x0001D4
0x0001BC:
    stog.msg[0s] = "* There's something here..^1.&* It feels warm^1, and moist./%%"
0x0001D4:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000214:
    exit
