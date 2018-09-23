#import ptvsd
#ptvsd.enable_attach(address = ('0.0.0.0', 5678), redirect_output=True)
# Enable the line of source code below only if you want the application to wait until the debugger has attached to it
#ptvsd.wait_for_attach()

from manipulator.numbermanipulator import squared_num
import random

print("Remote Debugging in Docker...")    # outputs Hello Docker message to the console

guesses_made = 0
name = 'James'
number = random.randint(1, 20)

# The following example taken from Microsoft remote debugging documentation
print('Well, {0}, I am thinking of a number between 1 and 20.'.format(name))

while guesses_made < 3:
    guess = int(input('Take a guess: '))
    guesses_made += 1
    if guess < number:
        print('Your guess is too low.')
    if guess > number:
        print('Your guess is too high.')
    if guess == number:
        break
if guess == number:
    print('Good job, {0}! You guessed my number in {1} guesses!'.format(name, guesses_made))
else:
    print('Nope. The number I was thinking of was {0}'.format(number))
    print('The number squared is {0}'.format(squared_num(number)))
