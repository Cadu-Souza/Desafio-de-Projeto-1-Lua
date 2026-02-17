-- Configurar em UTF-8 - chcp (code page)
-- utf-8 65001
os.execute("chcp 65001") -- Habilitar UTF-8 no terminal
os.execute("color 0a")
os.execute("cls")

-- Criatura
local nomeMonstro = "Creeper"
local descricao = "Faz kaboom, cuidado"
local som = "Tssssssssss"
local periodoFavorito = "Noturno"
local item = "Polvora"
local emoji = "ᓚᘏᗢ"

-- Atributos
local ataqueAtb = 10
local defesaAtb = 1
local vidaAtb = 5
local velocidadeAtb = 7
local inteligenciaAtb = 2

-- Função que recebe um atributo e nos retorna uma barra de progresso em string
local function getBarraProgresso(atributo)
    local fullChar = "▨ "
    local emptyChar = "▢ "
    local resultado = ""
    for i = 1, 10, 1 do
        if i <= atributo then
            -- Quadradinho cheio
            resultado = resultado .. fullChar
        else
            -- Quadradinho vazio
            resultado = resultado .. emptyChar
        end
    end
    return resultado
    
end

local function barra()
    return "==================================================================================="
end

local function imprimeCreeper()
    local linhas = {{"00000000 "}, {"01100110 "}, {"01100110 "}, {"00011000 "}, {"00100100 "}, {"00100100 "}, {"00000000 "}}
    local fullChar = "▨ "
    local emptyChar = "▢ "
    local creeper = ""

    for x = 1, 7, 1 do
        for y = 1, 8 do
            local bit = linhas[x][1]:sub(y, y)

            if bit == "0" then
                creeper = creeper .. fullChar
            else
                creeper = creeper .. emptyChar
            end
        end
        
                creeper = creeper .. "\n|       "
            
    end

    return creeper
end

-- Cartão
print(barra())
print("| Nome:  "..nomeMonstro)
print("| Desc.: "..descricao)
print("| Emoji: "..emoji)
print("| Som:   "..som)
print("| Hora:  "..periodoFavorito)
print("| Item:  "..item)
print("|")
print("| Atributos:")
print("|     Ataque: "..getBarraProgresso(ataqueAtb))
print("|     Defesa: "..getBarraProgresso(defesaAtb))
print("|     Vida:   "..getBarraProgresso(vidaAtb))
print("|     Veloc:  "..getBarraProgresso(velocidadeAtb))
print("|     Intel:  "..getBarraProgresso(inteligenciaAtb))
print(barra())
print("         ||                                ||         ")
print("         ||                                ||         ")
print(barra())
print("|")
print("| Curiosidade: O Creeper é uma criatura que ataca furtivamente, \n| sempre espera que sua presa esteja distraida para se aproximar e explodir, \n| dizem que se um raio o atingir ele se torna ainda mais poderoso")
print("|")
print("|       "..imprimeCreeper())
print("|")
print(barra())