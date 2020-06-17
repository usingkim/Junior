class EmptyError(Exception):
    def __init__(self, data, msg = "This line is Empty!"):
        super().__init__(msg)
        self.data = data
def getResult(nums):
    result = 0
    if len(nums) == 0:
                 raise EmptyError(nums)
    
    for i in range(len(nums)):
        try:
            nums[i] = int(nums[i])
        except ValueError:
            return str(result)
        else:
            result += nums[i]
    return result
if __name__ == '__main__':
    while(True) :
        nums = input().split()
        try:
            print('(' + getResult(nums) + ')')
        except TypeError:
            print(getResult(nums))
        except EmptyError:
            break
