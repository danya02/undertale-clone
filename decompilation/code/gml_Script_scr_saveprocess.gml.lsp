0x000000:
    global.lastsavedkills = global.kills
    global.lastsavedtime = 1569.time
    global.lastsavedlv = global.lv
    self.file = (+ "file" (string[]:int32 global.filechoice))
    self.myfileid = (file_text_open_write[]:int32 self.file)
    call (file_text_write_string[]:int32 global.charname self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.lv self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.maxhp self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.maxen self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.at self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.wstrength self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.df self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.adef self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.sp self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.xp self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.gold self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.kills self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 8s) goto 0x000368
0x0002CC:
    push -5s
    call (file_text_write_real[]:int32 (int32 self.i):item self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    push -5s
    call (file_text_write_real[]:int32 (int32 self.i):phone self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x0002B8
0x000368:
    call (file_text_write_real[]:int32 global.weapon self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.armor self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 512s) goto 0x000444
0x0003E8:
    push -5s
    call (file_text_write_real[]:int32 (int32 self.i):flag self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x0003D4
0x000444:
    call (file_text_write_real[]:int32 global.plot self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = 0s
    if !(< self.i 3s) goto 0x0004F0
0x000494:
    push -5s
    call (file_text_write_real[]:int32 (int32 self.i):menuchoice self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    self.i = (+ self.i 1s)
    goto 0x000480
0x0004F0:
    call (file_text_write_real[]:int32 global.currentsong self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 global.currentroom self.myfileid)
    call (file_text_writeln[]:int32 self.myfileid)
    call (file_text_write_real[]:int32 1569.time self.myfileid)
    call (file_text_close[]:int32 self.myfileid)
0x000580:
    exit
