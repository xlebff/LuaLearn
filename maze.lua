os.execute("chcp 65001 > nul")

msg = { "Вы в комнате 1", "Вы в комнате 2", "Вы в комнате 3", "Поздравляем, вы выиграли!"}
unreachable = "Недопустимый ход"

rooms = {
    { south = 3, east = 2 },
    { south = 4, west = 1 },
    { north = 1, east = 4 },
}

current_index = 1

function going(rooms)
    print(msg[current_index])

    local move = io.read()

    for k, v in pairs(rooms) do
        if k == move then
            current_index = rooms[move]
        end
    end

    wrong()
end

function wrong()
    print(unreachable)
end

while current_index ~= (#rooms + 1) do
    going(rooms[current_index])
end

print(msg[#msg])