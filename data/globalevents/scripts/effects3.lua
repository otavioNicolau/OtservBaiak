local text = {
        [20] = {pos = {164,55,7}, text = {"Teleports"}},
        [21] = {pos = {156,48,7}, text = {"Rotworms"}},
        [22] = {pos = {140,64,7}, text = {"Templo...."}},
        [23] = {pos = {140,65,7}, text = {"Arena PvP"}},
        [24] = {pos = {164,53,7}, text = {"Depot"}},
        [25] = {pos = {140,51,7}, text = {"<--Depot"}
	 }
}
        local effects = {
        
[111] = {pos = {164,55,7}, effect = {37}}, 
[11111] = {pos = {156,48,7}, effect = {39}},
[133] = {pos = {160,53,7}, effect = {39}}, 
[2221] = {pos = {164,53,7}, effect = {39}},
[2223] = {pos = {140,65,7}, effect = {39}},
[2224] = {pos = {140,64,7}, effect = {39}},
        [3331] = {pos = {155,48,7}, effect = {39}},
        [222] = {pos = {164,53,7}, effect = {36}},
        [333] = {pos = {155,48,7}, effect = {36}},
        [444] = {pos = {154,48,7}, effect = {36}},
        [555] = {pos = {153,48,7}, effect = {36}},
        [666] = {pos = {152,48,7}, effect = {36}},
        [777] = {pos = {152,45,7}, effect = {36}},
        [888] = {pos = {150,44,7}, effect = {36}},
        [999] = {pos = {149,44,7}, effect = {36}},
        [1000] = {pos = {148,44,7}, effect = {36}},
        [1111] = {pos = {147,44,7},  effect = {36}},
[1222] = {pos = {146,44,7},  effect = {36}}, 
        [1333] = {pos = {145,44,7}, effect = {36}},

        [1] = {pos = {164,55,7}, effect = {18}},
        [2] = {pos = {164,53,7}, effect = {19}},
        [3] = {pos = {155,48,7}, effect = {22}},
        [4] = {pos = {154,48,7}, effect = {21}},
        [5] = {pos = {153,48,7}, effect = {22}},
        [6] = {pos = {152,48,7}, effect = {22}},
        [7] = {pos = {152,45,7}, effect = {22}},
        [8] = {pos = {150,44,7}, effect = {22}},
        [9] = {pos = {149,44,7}, effect = {22}},
        [10] = {pos = {148,44,7}, effect = {22}},
        [11] = {pos = {147,44,7},  effect = {22}},
[12] = {pos = {146,44,7},  effect = {22}}, 
        [13] = {pos = {145,44,7}, effect = {22}}
        }

function onThink(interval, lastExecution)
        for _, area in pairs(text) do
                doSendAnimatedText({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.text[1], math.random(01,255))
        end
        for _, area in pairs(effects) do
                doSendMagicEffect({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.effect[1])
        end
        return TRUE
end 