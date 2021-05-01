=begin

PROBLEM

- write a method that implements a mini stack-and-register programming language

explicit reqs
- stack is Last In First Out
- operations done on the stack value also remove the stack value from the stack
- operations are done in the register value, which is stored separate from the stack


implicit reqs
- input string elements will be separated by spaces

COMMANDS FOR LANGUAGE
n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

EXAMPLES

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
#6

DATA STRUCTURES
input: string
output: integers

use arrays to break up the elements in the string
use integer variable to hold register value
use array.last to get last element in the stack array to perform operations

ALGORITHM
- initialize commands array to inputstring.split
- initialize stack array to empty array
- iterate over commands array of instructions
- case statement for string
  - integer: add value to register
  - PUSH: push register value to stack
  - ADD: pop from stack, add this value to register, update register
  - SUB: pop from stack, sub this value from register, update register
  - MULT: pop from stack, multiply register value, update register
  - DIV: pop from stack, divide into register value, update register
  - MOD: pop from stack, modulo into register value, update reg w/ remainder
  - POP: remove topmost item from stack and update register
  - PRINT: print register value

=end
require 'pry'

def minilang(string)
  commands = string.split
  stack = []
  register = 0

  commands.each do |command|
    case command
    when 'PUSH'   then stack.push(register)
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               register = command.to_i
    end
  end
end

# binding.pry
minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
