0x000000:
    if !(== self.saved 1s) goto 0x0000B8
0x000014:
    self.durara = self.save_durara
    self.oner = self.save_oner
    stog.alarm[4s] = self.save_alarm
    self.siner2 = self.save_siner2
    self.md = self.save_md
    self.con = self.save_con
    self.gr = self.save_gr
    self.grgr = self.save_grgr
    self.grgrgr = self.save_grgrgr
    call (scr_floweybodyload[]:int32 )
0x0000B8:
    exit
