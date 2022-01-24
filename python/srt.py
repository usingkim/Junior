import pyautogui as pag
from PIL import ImageGrab
pos = pag.position()
screen=ImageGrab.grab()
color = screen.getpixel(pos)
print(pos)
print(color)
