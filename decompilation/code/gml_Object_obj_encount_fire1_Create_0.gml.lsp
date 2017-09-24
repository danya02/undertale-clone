0x000000:
    push -5s
    if (== 8s:flag 1s) goto 0x000038
0x00001C:
    push -5s
    push (== 7s:flag 1s)
    goto 0x00003C
0x000038:
    push 1s
0x00003C:
    if !pop goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    self.alldead = 0s
    global.encounter = 0s
    self.factor = 220s
    self.desto = 0s
    if !(== self.room 144s) goto 0x0000AC
0x000090:
    push -5s
    push (< 408s:flag 1s)
    goto 0x0000B0
0x0000AC:
    push 0s
0x0000B0:
    if !pop goto 0x0000C0
0x0000B4:
    self.factor = 80s
0x0000C0:
    if !(== self.room 145s) goto 0x0000F0
0x0000D4:
    push -5s
    push (< 408s:flag 2s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x000104
0x0000F8:
    self.factor = 120s
0x000104:
    if !(== self.room 159s) goto 0x000134
0x000118:
    push -5s
    push (< 408s:flag 3s)
    goto 0x000138
0x000134:
    push 0s
0x000138:
    if !pop goto 0x000148
0x00013C:
    self.factor = 80s
0x000148:
    if !(== self.room 174s) goto 0x000178
0x00015C:
    push -5s
    push (< 408s:flag 4s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x00018C
0x000180:
    self.factor = 20s
0x00018C:
    call (script_execute[]:int32 (var 205s) (var 40s) (var 30s) self.factor (var 101s))
    if !(== (scr_enemynpc3[]:int32 ) 1s) goto 0x0001E0
0x0001D4:
    call (instance_destroy[]:int32 )
0x0001E0:
    if !(== self.room 174s) goto 0x000210
0x0001F4:
    push -5s
    push (!= 400s:flag 0s)
    goto 0x000214
0x000210:
    push 0s
0x000214:
    if !pop goto 0x000224
0x000218:
    call (instance_destroy[]:int32 )
0x000224:
    exit
