class PolyAdd():
    def __init__(self, poly):
        self.value = poly

    def balancing(self, other):
        if len(self.value) < len(other.value):
            while len(self.value) != len(other.value):
                self.value.insert(0, '0')
        if len(self.value) > len(other.value):
            while len(self.value) != len(other.value):
                other.value.insert(0, '0')

    def __add__(self, other):
        for i in range(len(self.value)):
            self.value[i] = int(self.value[i])
            self.value[i] += int(other.value[i])
        return self.value

    def make_pretty(self):
        string = ""
        for i in range(len(self.value)):
            if self.value[i] == 0:
                continue

            ## + / - choose
            if string != "":
                if self.value[i] > 0:
                    string += " + "
                else:
                    string += " - "
                    self.value[i] = -self.value[i]

            if self.value[i] != 1 or i == len(self.value)-1:
                string += str(self.value[i])

            if i != len(self.value)-1:
                string += 'x'
                if i != len(self.value)-2:
                    string += ('^' + str(len(self.value) - i - 1))
        return string

if __name__ == '__main__':
    x = PolyAdd(input().split())
    y = PolyAdd(input().split())

    x.balancing(y)
    x.__add__(y)

    print(x.make_pretty())
