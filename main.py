import pygame

pygame.init()
d = pygame.display.set_mode((800,600))

def invoke_dog(text=""):
    s1 = pygame.image.load("sprites/spr_tobdogl_0.png")
    s2 = pygame.image.load("sprites/spr_tobdogl_1.png")
    scale_factor = 4
    s1 = pygame.transform.scale(s1, (s1.get_width()*scale_factor, s1.get_height()*scale_factor))
    s2 = pygame.transform.scale(s2, (s2.get_width()*scale_factor, s2.get_height()*scale_factor))
    pygame.mixer.music.load("mus/mus_dance_of_dog.ogg")
    font = pygame.font.Font("fonts/determinationmono.ttf", 32)
    text = font.render(text, 0, pygame.Color(255,255,255,255))
    pygame.mixer.music.play(-1)
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
