0x000000:
    push 2s
    stog.pause* = (int32 self.guy)
    push 2s
    stog.pause* = (int32 self.guy_r)
    push 1s
    stog.pauser* = (int32 self.guy3)
    stog.talk[0s] = 0s
    stog.talk[1s] = 0s
    stog.talk[2s] = 0s
    stog.talk[3s] = 0s
    stog.talk_r[0s] = 0s
    stog.talk_r[1s] = 0s
    stog.talk_r[2s] = 0s
    stog.talk_r[3s] = 0s
    stog.sh[0s] = self.guy
    stog.sh[1s] = self.guy2
    stog.sh[2s] = self.guy3
    stog.sh[3s] = self.guy4
    stog.sh[4s] = self.guy_r
    stog.sh[5s] = self.guy_r2
    stog.sh[6s] = self.guy_r3
    stog.sh[7s] = self.guy_r4
    self.i = 0s
    if !(< self.i 8s) goto 0x00025C
0x0001C8:
    push -1s
    stog.shx[(int32 self.i)] = (int32 (int32 self.i):sh):x
    push -1s
    stog.shy[(int32 self.i)] = (int32 (int32 self.i):sh):y
    self.i = (+ self.i 1s)
    goto 0x0001B4
0x00025C:
    exit
