import pygame
import gzip

pygame.init()
d = pygame.display.set_mode((800,600))

def invoke_dog(text=""):
    s1 = pygame.image.fromstring(gzip.decompress(b'\x1f\x8b\x08\x00\xd8\xb8\xbbY\x02\xffc`\xa0\x14\xfc\xff\xff\x1fB\xc2\x01\\\x90\x18\xbdX\x01%z\tjGv$V\xc7\x93g).\x13\xe0"h\n\x881\x01Y1ZP\x13\xe3\x184\xff\x92\xe1\x8b\xffd\x81\x11\xa5\x97\xd4\x80\xc5\xaf\x17\x7f\x94\xe1\x91\xc5\xaa\x12\xab^\x82y\x19\xbf\x08\xe5\x00\x00W\x07lAt\x04\x00\x00'), (20, 19), 'RGB')
    s2 = pygame.image.fromstring(gzip.decompress(b'\x1f\x8b\x08\x00\x85\xb9\xbbY\x02\xffc`\xa0\x0e\xf8\xff\xff?\x84\x84\x03\xb8 \xf1&`\x05\x94\x9b@\xa4!\xc8\xce\xc6\xea\x1dJ\x1c@\xa49h\xca\xc80\x079\xe4\xb1z\x84\xa0\x99\x98\xe6\x93\xea\xaf\xffd\x81Q\x13\xb0F+\xb5L\xc0\x1f\xb9\xb8d\xb1\xaa\xc1\x9a\xe4\x08\x9a@RIB]\x00\x00h\x1d1\xcc\xe6\x04\x00\x00'), (22, 19), 'RGB')
    scale_factor = 4
    s1 = pygame.transform.scale(s1, (s1.get_width()*scale_factor, s1.get_height()*scale_factor))
    s2 = pygame.transform.scale(s2, (s2.get_width()*scale_factor, s2.get_height()*scale_factor))
    try:
        pygame.mixer.music.load("mus/mus_dance_of_dog.ogg")
    except:
        pass
    font = pygame.font.Font("fonts/determinationmono.ttf", 32)
    text = font.render(text, 0, pygame.Color(255,255,255,255))
    try:
        pygame.mixer.music.play(-1)
    except:
        pass
    while 1:
        d.fill(pygame.Color(0,0,0,255))
        d.blit(s1, (400 - int(s1.get_width()/2), 300 - int(s1.get_height()/2)))
        d.blit(text, (400 - int(text.get_width()/2), 450))
        pygame.display.update()
        pygame.time.wait(250)
        d.fill(pygame.Color(0,0,0,255))
        d.blit(s2, (400 - int(s1.get_width()/2), 300 - int(s1.get_height()/2)))
        d.blit(text, (400 - int(text.get_width()/2), 450))
        pygame.display.update()
        pygame.time.wait(250)
invoke_dog("Not implemented.")
