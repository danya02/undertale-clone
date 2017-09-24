0x000000:
    self.save_durara = self.durara
    self.save_oner = self.oner
    push -1s
    self.save_alarm = 4s:alarm
    self.save_siner2 = self.siner2
    self.save_md = self.md
    self.save_con = self.con
    self.save_gr = self.gr
    self.save_grgr = self.grgr
    self.save_grgrgr = self.grgrgr
    call (scr_floweybodysave[]:int32 )
    self.saved = 1s
    self.memorymode = 1s
0x0000BC:
    exit
