from tkinter import *
def enter(label):
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
        
def makeButton(num):
    global call_count
    call_count +=1
    s = 0
    for label in num:
        btn = Button(frm, text=label, width=5, command=(lambda char=label: enter(char)))
        btn.grid(row=call_count, column = s)
        s+=1
if __name__ == '__main__':
    window = Tk()
    window.title('Calculator')
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

    n=0
    operand = ""
    compute = 0
    op = ['0']
    window.mainloop()
