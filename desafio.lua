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
-- Cartão
print("======================================================")
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
print("======================================================")