0x000000:
    self.mode = 1s
    stog.partx[0s] = 5s
    stog.party[0s] = 75s
    stog.partrot[0s] = (- self.rot)
    stog.partx[1s] = 0s
    stog.party[1s] = (+ 35s (/ self.rot (double 4s)))
    stog.partrot[1s] = (/ self.rot (double 2s))
    stog.partx[2s] = 5s
    stog.party[2s] = 65s
    stog.partrot[2s] = (/ self.rot (double 3s))
    stog.partx[3s] = (/ (- self.rot) (double 3s))
    stog.party[3s] = (/ self.rot (double 3s))
    stog.partrot[3s] = self.rot
    self.i = 0s
    if !(< self.i 4s) goto 0x000230
0x000184:
    push -1s
    stog.opartx[(int32 self.i)] = (int32 self.i):partx
    push -1s
    stog.oparty[(int32 self.i)] = (int32 self.i):party
    push -1s
    stog.opartrot[(int32 self.i)] = (int32 self.i):partrot
    self.i = (+ self.i 1s)
    goto 0x000170
0x000230:
    self.fakegrav = 0.5d
0x000244:
    exit
