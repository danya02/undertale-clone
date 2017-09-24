0x000000:
    self.credno = 0s
    self.credamt = 0s
    self.credfile = (file_text_open_read[]:int32 (+ self.working_directory "credits.txt"))
    self.thiscred = " "
    if !(!= self.thiscred "%%%") goto 0x0000DC
0x000064:
    stog.creditname[(int32 self.credamt)] = (file_text_read_string[]:int32 self.credfile)
    push -1s
    self.thiscred = (int32 self.credamt):creditname
    call (file_text_readln[]:int32 self.credfile)
    self.credamt = (+ self.credamt 1s)
    goto 0x00004C
0x0000DC:
    call (file_text_close[]:int32 self.credfile)
    self.cy = 10s
    self.rounded = 0s
    self.memory = 0s
    self.st_t = 0s
    self.st_y = 500s
    self.st_f = 0s
    self.memswitch = 0s
    self.mytimer = 0s
    self.hitno = 0s
    stog.hitname[0s] = ""
    self.songed = 0s
    self.active = 0s
    self.drawbar = 0s
    global.inbattle = 1s
    self.ting = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.curf = (ini_read_real[]:int32 (var 0s) (var "EndF") (var "EndF"))
    call (ini_close[]:int32 )
    if !(== self.curf 0s) goto 0x0002AC
0x000218:
    self.horror = (caster_load[]:int32 (var "music/yourbestfriend_3.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.7d) self.horror)
    self.asriel = (instance_create[]:int32 (var 569s) (var 16s) (var 272s))
    self.a_con = 1s
    stog.alarm[4s] = 30s
    goto 0x0002C8
0x0002AC:
    self.a_con = 7s
    self.a2 = self.id
0x0002C8:
    exit
