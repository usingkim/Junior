from tkinter import *

def click():
    counter.set(counter.get() + 1)

def unclick():
    counter.set(counter.get() - 1)

if __name__ == '__main__':

    window = Tk()
    window.title('Counter')

    counter = IntVar()
    counter.set(0)

    label = Label(window, textvariable=counter)
    label.pack()

    button = Button(window, text="UP", command=click)
    button.pack()

    button = Button(window, text="DOWN", command=unclick)
    button.pack()

    window.mainloop()

