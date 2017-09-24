0x000000:
    self.c = 0s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.M1 = (ini_read_real[]:int32 (var 0s) (var "PK") (var "Papyrus"))
    call (ini_write_real[]:int32 (+ self.M1 1s) (var "PK") (var "Papyrus"))
    call (ini_close[]:int32 )
0x000094:
    exit
