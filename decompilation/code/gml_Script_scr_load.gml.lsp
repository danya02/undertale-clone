0x000000:
    self.filechoicebk = global.filechoice
    call (room_set_persistent[]:int32 (var 0s) global.currentroom)
    call (script_execute[]:int32 (var 62s))
    global.filechoice = self.filechoicebk
    self.file = (+ "file" (string[]:int32 global.filechoice))
    self.myfileid = (file_text_open_read[]:int32 self.file)
    global.charname = (file_text_read_string[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.lv = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.maxhp = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.maxen = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.at = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.wstrength = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.df = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.adef = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.sp = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.xp = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.gold = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.kills = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 8s) goto 0x000350
0x0002BC:
    stog.item[(int32 self.i)] = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    stog.phone[(int32 self.i)] = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x0002A8
0x000350:
    global.weapon = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.armor = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 512s) goto 0x000420
0x0003C8:
    stog.flag[(int32 self.i)] = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x0003B4
0x000420:
    global.plot = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 3s) goto 0x0004C4
0x00046C:
    stog.menuchoice[(int32 self.i)] = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x000458
0x0004C4:
    stog.flag[94s] = 0s
    global.currentsong = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.currentroom = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    [obj_time].time = (file_text_read_real[]:int32 self.myfileid)
    call (file_text_readln[]:int32 self.myfileid)
    global.lastsavedkills = global.kills
    global.lastsavedtime = 1569.time
    global.lastsavedlv = global.lv
    call (file_text_close[]:int32 self.myfileid)
    global.hp = global.maxhp
    global.en = global.maxen
    call (script_execute[]:int32 (var 59s))
    if !(< global.currentroom 75s) goto 0x0005F4
0x0005E8:
    global.area = 0s
0x0005F4:
    if !(>= global.currentroom 75s) goto 0x000614
0x000608:
    global.area = 1s
0x000614:
    stog.flag[360s] = 0s
    stog.flag[361s] = 0s
    stog.flag[362s] = 0s
    stog.flag[363s] = 0s
    stog.flag[364s] = 0s
    call (scr_dogcheck[]:int32 )
    if !(== self.dogcheck 1s) goto 0x0006AC
0x000698:
    call (room_goto[]:int32 global.currentroom)
0x0006AC:
    exit
