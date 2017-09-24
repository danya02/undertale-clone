0x000000:
    self.time = (+ self.time 1s)
    if !(== self.jt 0s) goto 0x000088
0x00002C:
    if !(!= self.j_ch 2s) goto 0x000088
0x000040:
    if !(bool (joystick_exists[]:int32 (var 1s))) goto 0x000068
0x000058:
    self.j_ch = 1s
    goto 0x000088
0x000068:
    if !(== self.j_ch 1s) goto 0x000088
0x00007C:
    self.j_ch = 0s
0x000088:
    if !(== self.jt 4s) goto 0x0000F8
0x00009C:
    if !(!= self.j_ch 1s) goto 0x0000F8
0x0000B0:
    if !(bool (joystick_exists[]:int32 (var 2s))) goto 0x0000D8
0x0000C8:
    self.j_ch = 2s
    goto 0x0000F8
0x0000D8:
    if !(== self.j_ch 2s) goto 0x0000F8
0x0000EC:
    self.j_ch = 0s
0x0000F8:
    self.jt = (+ self.jt 1s)
    if !(>= self.jt 8s) goto 0x000130
0x000124:
    self.jt = 0s
0x000130:
    if !(> self.j_ch 0s) goto 0x000B1C
0x000144:
    push -1s
    stog.j_prev[0s] = 0s:j_on
    stog.j_on[0s] = (joystick_check_button[]:int32 global.button0 self.j_ch)
    push -1s
    if !(== 0s:j_on 1s) goto 0x0001D0
0x0001A8:
    push -1s
    push 0s:j_prev
    push (!= -1s 0s:j_on)
    goto 0x0001D4
0x0001D0:
    push 0s
0x0001D4:
    if !pop goto 0x0001EC
0x0001D8:
    call (keyboard_key_press[]:int32 (var 90s))
0x0001EC:
    push -1s
    if !(== 0s:j_on 0s) goto 0x000230
0x000208:
    push -1s
    push 0s:j_prev
    push (!= -1s 0s:j_on)
    goto 0x000234
0x000230:
    push 0s
0x000234:
    if !pop goto 0x00024C
0x000238:
    call (keyboard_key_release[]:int32 (var 90s))
0x00024C:
    push -1s
    stog.j_prev[1s] = 1s:j_on
    stog.j_on[1s] = (joystick_check_button[]:int32 global.button1 self.j_ch)
    push -1s
    if !(== 1s:j_on 1s) goto 0x0002D8
0x0002B0:
    push -1s
    push 1s:j_prev
    push (!= -1s 1s:j_on)
    goto 0x0002DC
0x0002D8:
    push 0s
0x0002DC:
    if !pop goto 0x0002F4
0x0002E0:
    call (keyboard_key_press[]:int32 (var 88s))
0x0002F4:
    push -1s
    if !(== 1s:j_on 0s) goto 0x000338
0x000310:
    push -1s
    push 1s:j_prev
    push (!= -1s 1s:j_on)
    goto 0x00033C
0x000338:
    push 0s
0x00033C:
    if !pop goto 0x000354
0x000340:
    call (keyboard_key_release[]:int32 (var 88s))
0x000354:
    push -1s
    stog.j_prev[2s] = 2s:j_on
    stog.j_on[2s] = (joystick_check_button[]:int32 global.button2 self.j_ch)
    push -1s
    if !(== 2s:j_on 1s) goto 0x0003E0
0x0003B8:
    push -1s
    push 2s:j_prev
    push (!= -1s 2s:j_on)
    goto 0x0003E4
0x0003E0:
    push 0s
0x0003E4:
    if !pop goto 0x0003FC
0x0003E8:
    call (keyboard_key_press[]:int32 (var 67s))
0x0003FC:
    push -1s
    if !(== 2s:j_on 0s) goto 0x000440
0x000418:
    push -1s
    push 2s:j_prev
    push (!= -1s 2s:j_on)
    goto 0x000444
0x000440:
    push 0s
0x000444:
    if !pop goto 0x00045C
0x000448:
    call (keyboard_key_release[]:int32 (var 67s))
0x00045C:
    self.j_fr_p = self.j_fr
    self.j_fl_p = self.j_fl
    self.j_fu_p = self.j_fu
    self.j_fd_p = self.j_fd
    self.j_fr = 0s
    self.j_fl = 0s
    self.j_fu = 0s
    self.j_fd = 0s
    if (== global.joy_dir 0s) goto 0x0004F4
0x0004E0:
    push (== global.joy_dir 1s)
    goto 0x0004F8
0x0004F4:
    push 1s
0x0004F8:
    if !pop goto 0x00052C
0x0004FC:
    self.j_xpos = (joystick_xpos[]:int32 self.j_ch)
    self.j_ypos = (joystick_ypos[]:int32 self.j_ch)
0x00052C:
    self.j_dir = (joystick_direction[]:int32 self.j_ch)
    if (== global.joy_dir 0s) goto 0x00056C
0x000558:
    push (== global.joy_dir 1s)
    goto 0x000570
0x00056C:
    push 1s
0x000570:
    if !pop goto 0x000620
0x000574:
    if !(== self.j_dir 101s) goto 0x000620
0x000588:
    if !(>= self.j_xpos global.analog_sense) goto 0x0005AC
0x0005A0:
    self.j_fr = 1s
0x0005AC:
    if !(<= self.j_xpos (- global.analog_sense)) goto 0x0005D4
0x0005C8:
    self.j_fl = 1s
0x0005D4:
    if !(>= self.j_ypos global.analog_sense) goto 0x0005F8
0x0005EC:
    self.j_fd = 1s
0x0005F8:
    if !(<= self.j_ypos (- global.analog_sense)) goto 0x000620
0x000614:
    self.j_fu = 1s
0x000620:
    if !(!= self.j_dir 101s) goto 0x000764
0x000634:
    if !(== self.j_dir 100s) goto 0x000654
0x000648:
    self.j_fl = 1s
0x000654:
    if !(== self.j_dir 98s) goto 0x000674
0x000668:
    self.j_fd = 1s
0x000674:
    if !(== self.j_dir 102s) goto 0x000694
0x000688:
    self.j_fr = 1s
0x000694:
    if !(== self.j_dir 104s) goto 0x0006B4
0x0006A8:
    self.j_fu = 1s
0x0006B4:
    if !(== self.j_dir 99s) goto 0x0006E0
0x0006C8:
    self.j_fr = 1s
    self.j_fd = 1s
0x0006E0:
    if !(== self.j_dir 97s) goto 0x00070C
0x0006F4:
    self.j_fd = 1s
    self.j_fl = 1s
0x00070C:
    if !(== self.j_dir 103s) goto 0x000738
0x000720:
    self.j_fu = 1s
    self.j_fl = 1s
0x000738:
    if !(== self.j_dir 105s) goto 0x000764
0x00074C:
    self.j_fu = 1s
    self.j_fr = 1s
0x000764:
    if (== global.joy_dir 0s) goto 0x00078C
0x000778:
    push (== global.joy_dir 2s)
    goto 0x000790
0x00078C:
    push 1s
0x000790:
    if !pop goto 0x0008DC
0x000794:
    self.j_pov = (joystick_pov[]:int32 self.j_ch)
    if !(== self.j_pov 0s) goto 0x0007CC
0x0007C0:
    self.j_fu = 1s
0x0007CC:
    if !(== self.j_pov 270s) goto 0x0007EC
0x0007E0:
    self.j_fl = 1s
0x0007EC:
    if !(== self.j_pov 90s) goto 0x00080C
0x000800:
    self.j_fr = 1s
0x00080C:
    if !(== self.j_pov 180s) goto 0x00082C
0x000820:
    self.j_fd = 1s
0x00082C:
    if !(== self.j_pov 315s) goto 0x000858
0x000840:
    self.j_fu = 1s
    self.j_fl = 1s
0x000858:
    if !(== self.j_pov 45s) goto 0x000884
0x00086C:
    self.j_fu = 1s
    self.j_fr = 1s
0x000884:
    if !(== self.j_pov 225s) goto 0x0008B0
0x000898:
    self.j_fd = 1s
    self.j_fl = 1s
0x0008B0:
    if !(== self.j_pov 135s) goto 0x0008DC
0x0008C4:
    self.j_fd = 1s
    self.j_fr = 1s
0x0008DC:
    if !(!= self.j_fr self.j_fr_p) goto 0x000908
0x0008F4:
    push (== self.j_fr 1s)
    goto 0x00090C
0x000908:
    push 0s
0x00090C:
    if !pop goto 0x000924
0x000910:
    call (keyboard_key_press[]:int32 (var 39s))
0x000924:
    if !(!= self.j_fl self.j_fl_p) goto 0x000950
0x00093C:
    push (== self.j_fl 1s)
    goto 0x000954
0x000950:
    push 0s
0x000954:
    if !pop goto 0x00096C
0x000958:
    call (keyboard_key_press[]:int32 (var 37s))
0x00096C:
    if !(!= self.j_fd self.j_fd_p) goto 0x000998
0x000984:
    push (== self.j_fd 1s)
    goto 0x00099C
0x000998:
    push 0s
0x00099C:
    if !pop goto 0x0009B4
0x0009A0:
    call (keyboard_key_press[]:int32 (var 40s))
0x0009B4:
    if !(!= self.j_fu self.j_fu_p) goto 0x0009E0
0x0009CC:
    push (== self.j_fu 1s)
    goto 0x0009E4
0x0009E0:
    push 0s
0x0009E4:
    if !pop goto 0x0009FC
0x0009E8:
    call (keyboard_key_press[]:int32 (var 38s))
0x0009FC:
    if !(!= self.j_fr self.j_fr_p) goto 0x000A28
0x000A14:
    push (== self.j_fr 0s)
    goto 0x000A2C
0x000A28:
    push 0s
0x000A2C:
    if !pop goto 0x000A44
0x000A30:
    call (keyboard_key_release[]:int32 (var 39s))
0x000A44:
    if !(!= self.j_fl self.j_fl_p) goto 0x000A70
0x000A5C:
    push (== self.j_fl 0s)
    goto 0x000A74
0x000A70:
    push 0s
0x000A74:
    if !pop goto 0x000A8C
0x000A78:
    call (keyboard_key_release[]:int32 (var 37s))
0x000A8C:
    if !(!= self.j_fd self.j_fd_p) goto 0x000AB8
0x000AA4:
    push (== self.j_fd 0s)
    goto 0x000ABC
0x000AB8:
    push 0s
0x000ABC:
    if !pop goto 0x000AD4
0x000AC0:
    call (keyboard_key_release[]:int32 (var 40s))
0x000AD4:
    if !(!= self.j_fu self.j_fu_p) goto 0x000B00
0x000AEC:
    push (== self.j_fu 0s)
    goto 0x000B04
0x000B00:
    push 0s
0x000B04:
    if !pop goto 0x000B1C
0x000B08:
    call (keyboard_key_release[]:int32 (var 38s))
0x000B1C:
    self.up = 0s
    self.down = 0s
    self.left = 0s
    self.right = 0s
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x000B70
0x000B64:
    self.try_up = 1s
0x000B70:
    if !(bool (keyboard_check_released[]:int32 (var 38s))) goto 0x000B94
0x000B88:
    self.try_up = 0s
0x000B94:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000BB8
0x000BAC:
    self.try_down = 1s
0x000BB8:
    if !(bool (keyboard_check_released[]:int32 (var 40s))) goto 0x000BDC
0x000BD0:
    self.try_down = 0s
0x000BDC:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000C00
0x000BF4:
    self.try_right = 1s
0x000C00:
    if !(bool (keyboard_check_released[]:int32 (var 39s))) goto 0x000C24
0x000C18:
    self.try_right = 0s
0x000C24:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000C48
0x000C3C:
    self.try_left = 1s
0x000C48:
    if !(bool (keyboard_check_released[]:int32 (var 37s))) goto 0x000C6C
0x000C60:
    self.try_left = 0s
0x000C6C:
    if !(== global.osflavor 1s) goto 0x000D24
0x000C80:
    if !(bool self.try_up) goto 0x000CA8
0x000C90:
    self.up = (keyboard_check_direct[]:int32 (var 38s))
0x000CA8:
    if !(bool self.try_down) goto 0x000CD0
0x000CB8:
    self.down = (keyboard_check_direct[]:int32 (var 40s))
0x000CD0:
    if !(bool self.try_left) goto 0x000CF8
0x000CE0:
    self.left = (keyboard_check_direct[]:int32 (var 37s))
0x000CF8:
    if !(bool self.try_right) goto 0x000D20
0x000D08:
    self.right = (keyboard_check_direct[]:int32 (var 39s))
0x000D20:
    goto 0x000DC4
0x000D24:
    if !(bool self.try_up) goto 0x000D4C
0x000D34:
    self.up = (keyboard_check[]:int32 (var 38s))
0x000D4C:
    if !(bool self.try_down) goto 0x000D74
0x000D5C:
    self.down = (keyboard_check[]:int32 (var 40s))
0x000D74:
    if !(bool self.try_left) goto 0x000D9C
0x000D84:
    self.left = (keyboard_check[]:int32 (var 37s))
0x000D9C:
    if !(bool self.try_right) goto 0x000DC4
0x000DAC:
    self.right = (keyboard_check[]:int32 (var 39s))
0x000DC4:
    if !(bool (keyboard_check_released[]:int32 (var 38s))) goto 0x000DE8
0x000DDC:
    self.up = 0s
0x000DE8:
    if !(bool (keyboard_check_released[]:int32 (var 40s))) goto 0x000E0C
0x000E00:
    self.down = 0s
0x000E0C:
    if !(bool (keyboard_check_released[]:int32 (var 37s))) goto 0x000E30
0x000E24:
    self.left = 0s
0x000E30:
    if !(bool (keyboard_check_released[]:int32 (var 39s))) goto 0x000E54
0x000E48:
    self.right = 0s
0x000E54:
    if !(bool (keyboard_multicheck[]:int32 (var 2s))) goto 0x000F6C
0x000E6C:
    push -5s
    if !(== 28s:flag 1s) goto 0x000F6C
0x000E88:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000EBC
0x000EA0:
    push (~ (bool (instance_exists[]:int32 (var 783s))))
    goto 0x000EC0
0x000EBC:
    push 0s
0x000EC0:
    if !pop goto 0x000F6C
0x000EC4:
    if !(== self.h_skip 0s) goto 0x000F00
0x000ED8:
    call (keyboard_key_press[]:int32 (var 88s))
    call (keyboard_key_press[]:int32 (var 90s))
0x000F00:
    if !(== self.h_skip 1s) goto 0x000F3C
0x000F14:
    call (keyboard_key_release[]:int32 (var 90s))
    call (keyboard_key_release[]:int32 (var 88s))
0x000F3C:
    if !(== self.h_skip 0s) goto 0x000F60
0x000F50:
    self.h_skip = 1s
    goto 0x000F6C
0x000F60:
    self.h_skip = 0s
0x000F6C:
    if !(== global.debug 1s) goto 0x000FA4
0x000F80:
    if !(bool (keyboard_check_pressed[]:int32 (var 70s))) goto 0x000FA4
0x000F98:
    self.room_speed = 200s
0x000FA4:
    if !(== global.debug 1s) goto 0x000FDC
0x000FB8:
    if !(bool (keyboard_check_pressed[]:int32 (var 87s))) goto 0x000FDC
0x000FD0:
    self.room_speed = 10s
0x000FDC:
    if !(bool (keyboard_check_pressed[]:int32 (var 115s))) goto 0x001030
0x000FF4:
    if !(bool (window_get_fullscreen[]:int32 )) goto 0x00101C
0x001004:
    call (window_set_fullscreen[]:int32 (var 0s))
    goto 0x001030
0x00101C:
    call (window_set_fullscreen[]:int32 (var 1s))
0x001030:
    if !(== self.canquit 1s) goto 0x001190
0x001044:
    if !(== global.debug 1s) goto 0x0010D8
0x001058:
    if !(bool (keyboard_check_pressed[]:int32 (var 82s))) goto 0x00108C
0x001070:
    push (== (instance_exists[]:int32 (var 409s)) 0s)
    goto 0x001090
0x00108C:
    push 0s
0x001090:
    if !pop goto 0x0010D8
0x001094:
    self.debug_r = (+ self.debug_r 1s)
    if !(> self.debug_r 5s) goto 0x0010CC
0x0010C0:
    call (game_restart[]:int32 )
0x0010CC:
    self.spec_rtimer = 1s
0x0010D8:
    self.spec_rtimer = (+ self.spec_rtimer 1s)
    if !(>= self.spec_rtimer 6s) goto 0x001110
0x001104:
    self.debug_r = 0s
0x001110:
    if !(bool (keyboard_check[]:int32 (var 27s))) goto 0x001184
0x001128:
    self.quit = (+ self.quit 1s)
    if !(== (instance_exists[]:int32 (var 139s)) 0s) goto 0x001180
0x00115C:
    call (instance_create[]:int32 (var 139s) (var 0s) (var 0s))
0x001180:
    goto 0x001190
0x001184:
    self.quit = 0s
0x001190:
    exit
