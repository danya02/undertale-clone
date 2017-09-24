0x000000:
    if !(== self.con 0s) goto 0x00006C
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rot (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x00006C:
    if !(== self.con 1s) goto 0x0000EC
0x000080:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text_transformed[]:int32 (var 0s) (var 1s) (var 1s) (var "By Toby Fox") (var 90s) (var 90s))
0x0000EC:
    if !(== self.con 3s) goto 0x000204
0x000100:
    global.entrance = 1s
    global.facing = 1s
    stog.phone[0s] = 0s
    stog.phone[1s] = 0s
    stog.phone[2s] = 0s
    stog.phone[3s] = 0s
    stog.phone[4s] = 0s
    stog.phone[5s] = 0s
    stog.phone[6s] = 0s
    stog.phone[7s] = 0s
    stog.phone[0s] = 206s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 44s))
0x000204:
    exit
