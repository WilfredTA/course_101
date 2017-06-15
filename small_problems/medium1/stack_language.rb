# Components of a stack language
# The stack
# The register
# The operations


#OPERATIONS
#n Place a value n in the "register". Do not modify the stack.
#PUSH Push the register value on to the stack. Leave the value in the register.
#ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
#SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
#MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
#DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
#MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
#POP Remove the topmost item from the stack and place in register
#PRINT Print the register value

def push
    STACK << REGISTER[-1]
end

def n(num)
    REGISTER[-1] = num
end

def add
   REGISTER[-1] = STACK.pop + REGISTER[-1]
end

def sub
    REGISTER[-1] = REGISTER[-1] - STACK.pop
end

def mult
    REGISTER[-1] = STACK.pop * REGISTER[-1]
end

def div
    REGISTER[-1] = (REGISTER[-1] / STACK.pop).to_i
end

def mod
    REGISTER[-1] = (REGISTER[-1] % STACK.pop).to_i
end

def pop
    REGISTER[-1] = STACK.pop
end

def print
    puts REGISTER[0]
end

REGISTER = [0]
STACK = []

def mini_lang(instructions)
    instructions.downcase.split(' ').each do |inst|
        case inst
            when inst.to_i.to_s # detects numbers
                n(inst.to_i)
            when 'push'
                push
            when 'pop'
                pop
            when 'add'
                add
            when "sub"
                sub
            when "mult"
                mult
            when "div"
                div
            when "mod"
                mod
            when "print"
                print
        end
    end
end

mini_lang('4 PUSH PUSH 7 MOD MULT PRINT ')