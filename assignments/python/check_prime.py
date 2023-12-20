def is_prime(num):
    if num > 1:
        for i in range(2, int(num ** 0.5) + 1):
            if (num % i) == 0:
                return False
        return True
    return False

with open('results.txt', 'w') as file:
    for number in range(1, 251):
        if is_prime(number):
            file.write(str(number) + '\n')