0x000000:
    if !(== self.conversation 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00007C
0x000038:
    global.interact = 1s
    self.image_index = 0s
    self.image_speed = 0.1d
    self.sprite_index = 1288s
    self.conversation = 2s
0x00007C:
    if !(== self.conversation 2s) goto 0x0000B4
0x000090:
    global.interact = 1s
    self.j = (+ self.j 1s)
0x0000B4:
    if !(== self.conversation 2s) goto 0x0000DC
0x0000C8:
    push (> self.j 30s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x000254
0x0000E4:
    global.interact = 1s
    self.sprite_index = 1289s
    self.image_speed = 0s
    global.msc = 0s
    global.typer = 5s
    self.myinteract = 3s
    stog.msg[0s] = "* OH!!!^1!&* A CUSTOMER!!!/%%"
    if !(== self.room 96s) goto 0x0001E8
0x000158:
    stog.msg[0s] = "* Fortunately^1, I've thought&  of a solution!!/"
    stog.msg[1s] = "* Punch cards!!/"
    stog.msg[2s] = "* Every time you buy a&  Nice Cream^1, you can take a&  punch card from the box./"
    stog.msg[3s] = "* If you have 3 cards^1, you&  can trade them for a&  free Nice Cream!/"
    stog.msg[4s] = "* They're sure to get the&  customers to come back!/%%"
    stog.msg[5s] = "* Anyway.../%%"
0x0001E8:
    if !(== self.room 181s) goto 0x000220
0x0001FC:
    self.sprite_index = 1287s
    stog.msg[0s] = "* I'm having a going out of&  business sale./%%"
0x000220:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 3s
0x000254:
    if !(== self.conversation 3s) goto 0x000284
0x000268:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000288
0x000284:
    push 0s
0x000288:
    if !pop goto 0x0003E8
0x00028C:
    call (instance_create[]:int32 (var 1525s) (var 0s) (var 0s))
    global.interact = 1s
    self.myinteract = 3s
    global.msc = 230s
    if !(== self.room 96s) goto 0x0002F4
0x0002E8:
    global.msc = 232s
0x0002F4:
    if !(== self.room 181s) goto 0x000314
0x000308:
    global.msc = 273s
0x000314:
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* You must have something better to do than read this message./%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 4s
    stog.flag[60s] = 1s
    if !(== self.room 96s) goto 0x0003C0
0x0003AC:
    stog.flag[79s] = 8s
0x0003C0:
    if !(== self.room 181s) goto 0x0003E8
0x0003D4:
    stog.flag[250s] = 1s
0x0003E8:
    if !(== self.myinteract 3s) goto 0x000414
0x0003FC:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000418
0x000414:
    push 0s
0x000418:
    if !pop goto 0x000454
0x00041C:
    if !(== 782.halt 0s) goto 0x000448
0x000430:
    self.image_speed = 0.2d
    goto 0x000454
0x000448:
    self.image_speed = 0s
0x000454:
    if (== self.myinteract 0s) goto 0x000484
0x000468:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000488
0x000484:
    push 1s
0x000488:
    if !pop goto 0x0004A4
0x00048C:
    self.image_speed = 0s
    self.image_index = 0s
0x0004A4:
    exit
