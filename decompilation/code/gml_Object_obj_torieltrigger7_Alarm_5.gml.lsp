0x000000:
    pushenv (int32 self.ruff) 0x00001C
0x000010:
    call (instance_destroy[]:int32 )
0x00001C:
    popenv 0x000010
0x000020:
    pushenv 861s 0x000034
0x000028:
    self.visible = 1s
0x000034:
    popenv 0x000028
0x000038:
    self.conversation = 5s
    global.faceemotion = 1s
    [obj_mainchara].visible = 1s
    stog.msg[0s] = "* Is something burning...?&* Um^1, make yourself&  at home!/%%"
    [obj_toroverworld3].phone = 0s
    [obj_toroverworld3].usprite = 1112s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000B0:
    exit
