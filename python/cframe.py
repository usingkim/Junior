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
'''from tkinter import *

class Calculator(Frame):
    def enter(self, label):
        global compute, n, operand
        if label == 'C':
            entry.delete(0, END)
            entry.insert(0, '0')
            compute = 0
            n = 0
        elif label == '+' or label == '*' or label == '-':
            op = entry.get().split()
            if len(op) == 2:
                entry.delete(0, END)
                entry.insert(END, op[0])
            labe = ' ' + label + ' '
            entry.insert(END, labe)
            operand = label
            compute = 0
        elif label == '=':
            op = entry.get()
            os = op
            entry.delete(0, END)
            op = op.split()

            if len(op) == 2:
                os += str(op[0])
                n = int(op[0])
            elif len(op) == 1 and op[0] != '0':
                os += ' ' + operand+' '+str(n)
            elif len(op)>=3:
                n = int(op[len(op)-1])
            entry.insert(0, eval(os))
            compute = 1
        else:
            op = entry.get().split()
            if op[0] == '0' and len(op) == 1:
                entry.delete(0, END)
            if compute == 1:
                entry.delete(0, END)
                compute = 0
            entry.insert(END, label)
            
    def __init__(self, other):
        r = 0
        for c in other:
            s = 0
            r +=1
            for label in c:
                btn = Button(frm, text=label, width=5, command=(lambda char=label: self.enter(char)))
                btn.grid(row=r, column = s)
                s += 1
    
if __name__ == '__main__':
    window = Tk()
    window.title('Calculator')
    entry = Entry(window, width=12, justify=RIGHT)
    entry.insert(0, '0')
    entry.pack()
    frm = Frame(window)
    frm.pack()

    calc = Calculator(['789', '456', '123', '0*C', '+-='])

    n=0
    operand = ""
    compute = 0
    window.mainloop()'''
