0x000000:
    self.con = 0s
    self.drawtext = 0s
    self.drawtext2 = 0s
    self.string1 = "Oh my love        "
    self.string2 = "Please run away   "
    self.image_yscale = 100s
    if !(> global.plot 166s) goto 0x000074
0x000064:
    call (instance_destroy[]:int32 )
    goto 0x0000A8
0x000074:
    stog.view_yview[0s] = 120s
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
0x0000A8:
    self.mainmove = 0s
    self.frantic = 0s
    stog.alarm[10s] = 15s
    self.lastmove = 0s
    self.lastx = 1570.x
    self.lasty = 1570.y
    self.unfrantic = 0s
    self.face2 = 0s
    self.touch = 0s
    self.already = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.already = (ini_read_real[]:int32 (var -1s) (var "O") (var "Mett"))
    call (ini_close[]:int32 )
    self.skip = 0s
0x000190:
    exit
