msg = "endless"

--- 1

while true do
    print(msg)
end

--- 2

for i = 1, math.huge do
    print(msg)
end

--- 3

repeat
    print(msg)
until false

--- 4

::loop::
print(msg)
goto loop