0x000000:
    stog.alarm[4s] = 150s
    self.con = 0s
    self.flowey = -1s
    stog.alarm[5s] = 60s
    self.fimg = 0s
    global.inbattle = 0s
    global.faceemotion = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.chara = (ini_read_string[]:int32 (var "CHARA") (var "Name") (var "General"))
    call (ini_close[]:int32 )
0x0000BC:
    exit
