local function link(lnk, text)
    return ('<a href="'..lnk..'" target="blank">'..text..'</a>')
end

local function Gh(rep)
    return link('https://github.com/'..rep, rep)
end


return {
    ["Trivia"] = {
        "Вдохновлено "..link('https://растпобеда.рф/', "растпобедой").." и прочими *победами",
        "Эта штука была написана где то за неделю на Zig и ".._VERSION.." потому что прикольно",
        'Исходный код проекта доступен на GitHub duh: '..Gh("VanderCat/luapobeda.rf")..' и '..Gh("VanderCat/lua-home-page"),
        "Влад Кот - дурак",
    },
    ["Авторы картинок"] = {
        "lua tan - "..link('https://gelbooru.com/index.php?page=post&s=view&id=9318412', "orenjipiiru"),
        "bg - "..link("https://www.newgrounds.com/art/view/unevenprankster/lua-tan", "UnevenPrankster")
    }
}