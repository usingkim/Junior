

if __name__ == '__main__':
    op = input().split()

    n1 = int(op[0])
    n2 = int(op[2])

    ope = op[1]

    result = 0

    if ope == '+':
        result = n1 + n2
    elif ope == '*':
        result = n1 * n2
    elif ope == '-':
        result = n1 - n2

    print(result)



###GUI PART###

"""
from tkinter import *
def enter(label):
    global compute, n, operand
    if label == 'C':
        entry.delete(0, END)
        entry.insert(0, '0')
        compute = 0
    elif label == '+' or label == '*' or label == '-':
        bb = entry.get().split()
        if len(bb) == 2:
            entry.delete(0, END)
            entry.insert(END, bb[0])
            
        entry.insert(END, " ")
        entry.insert(END, label)
        entry.insert(END, " ")
        operand = label
        compute = 0
    elif label == '=':
        op = entry.get()
        entry.delete(0, END)
        op = op.split()
        if len(op) == 2:
            op.append(op[0])            
        if len(op) == 1:
            if operand == '+':
                op[0] = int(op[0]) + n
            elif operand == '-':
                op[0] = int(op[0]) - n
            elif operand == '*':
                op[0] = int(op[0]) * n
            entry.insert(0, op[0])
        elif op[1] == '*':
            entry.insert(0, int(op[0]) * int(op[2]))
        elif op[1] == '+':
            entry.insert(0, int(op[0]) + int(op[2]))
        elif op[1] == '-':
            entry.insert(0, int(op[0]) - int(op[2]))
        if len(op)==3 :
            n = int(op[2])
        compute = 1
    else:
        op = entry.get()
        op = op.split()
        if op[0] == '0' and len(op) == 1:
            entry.delete(0, END)
        if compute == 1:
            entry.delete(0, END)
            compute = 0
        entry.insert(END, label)
        
def makeButton(num):
    global call_count
    call_count +=1
    s = 0
    for label in num:
        btn = Button(frm, text=label, width=5,
            command=(lambda char=label: enter(char)))
        btn.grid(row=call_count, column = s)
        s+=1
if __name__ == '__main__':
    window = Tk()
    window.title('Calc')
    entry = Entry(window, width=12, justify=RIGHT)
    entry.insert(0, '0')
    entry.pack()
    frm = Frame(window)
    frm.pack()

    call_count=0
    makeButton('789')
    makeButton('456')
    makeButton('123')
    makeButton('0*C')
    makeButton('+-=')
    
    operand = ""
    compute = 0
    op = ['0']
    window.mainloop()
"""
