    if a == 0 and p["p_mildmannered"] ~= true then
       p["p_aggressive"] = true
     elseif a == 1 and p["p_aggressive"] ~= true then
       p["p_mildmannered"] = true
     elseif a == 2 and p["p_intellectual"] ~= true then
       p["p_simpleminded"] = true
     elseif a == 3 and p["p_simpleminded"] ~= true then
       p["p_intellectual"] = true
     elseif a == 4 and p["p_fat"] ~= true then
       p["p_athletic"] = true
     elseif a == 5 and p["p_athletic"] ~= true then
       p["p_fat"] = true
     elseif a == 6 and p["p_rebellious"] ~= true then
       p["p_teamplayer"] = true
     elseif a == 7 and p["p_teamplayer"] ~= true then
       p["p_rebellious"] = true