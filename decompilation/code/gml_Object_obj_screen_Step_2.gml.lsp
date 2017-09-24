0x000000:
    if !(== global.inbattle 0s) goto 0x000030
0x000014:
    push -5s
    push (== 18s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x00004C
0x000038:
    call (script_execute[]:int32 (var 104s))
0x00004C:
    if !(== self.messed 1s) goto 0x000078
0x000060:
    call (window_set_caption[]:int32 (var "Floweytale"))
0x000078:
    if !(== self.messed 2s) goto 0x0000A4
0x00008C:
    call (window_set_caption[]:int32 (var " "))
0x0000A4:
    if !(== self.messed 3s) goto 0x00031C
0x0000B8:
    self.str_r = ""
    if (<= (dup int32) 0) goto 0x000304
0x000100:
    push (int32 (floor[]:int32 (+ 2s (random[]:int32 (var 15s)))))
    self.ir = (choose[]:int32 (var 1s) (var 0s))
    if !(== self.ir 0s) goto 0x0001EC
0x000134:
    self.str_piece = (choose[]:int32 (var " ") (var " ") (var "l") (var "k") (var "j") (var "i") (var "h") (var "g") (var "f") (var "e") (var "d") (var "c") (var "b") (var "a"))
0x0001EC:
    if !(== self.ir 1s) goto 0x0002D0
0x000200:
    self.str_piece = (choose[]:int32 (var " ") (var " ") (var "z") (var "y") (var "x") (var "w") (var "v") (var "u") (var "t") (var "s") (var "r") (var "q") (var "p") (var "o") (var "n") (var "m"))
0x0002D0:
    self.str_r = (+ self.str_r self.str_piece)
    if (bool (- pop 1)) goto 0x000100
0x000304:
    push (- pop 1)
    pop
    call (window_set_caption[]:int32 self.str_r)
0x00031C:
    exit
