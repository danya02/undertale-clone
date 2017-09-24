0x000000:
    self.nod1 = (instance_create[]:int32 (var 306s) (var 260s) (var 240s))
    push 0s
    stog.qno* = (int32 self.nod1)
    push self.a1
    stog.atext* = (int32 self.nod1)
    self.nod2 = (instance_create[]:int32 (var 306s) (var 260s) (var 360s))
    push 1s
    stog.qno* = (int32 self.nod2)
    push self.a2
    stog.atext* = (int32 self.nod2)
    self.nod3 = (instance_create[]:int32 (var 306s) (var 340s) (var 240s))
    push 2s
    stog.qno* = (int32 self.nod3)
    push self.a3
    stog.atext* = (int32 self.nod3)
    self.nod4 = (instance_create[]:int32 (var 306s) (var 340s) (var 360s))
    push 3s
    stog.qno* = (int32 self.nod4)
    push self.a4
    stog.atext* = (int32 self.nod4)
    push -1s
    push 4s:alarm
    push 306s
    stog.alarm[] = 0s
0x000190:
    exit
