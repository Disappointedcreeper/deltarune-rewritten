return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    fall = function(cutscene, event)
        local dess = cutscene:getCharacter("dess")
        local asriel = Game.world.player
        fall = Game.world:getEvent("fall")
        paper = Game.world.stage:getObjects(Registry.getEvent("paper"))
        Game.world:transitionMusic("none")


        Game.world:getEvent("door"):remove()
        Assets.playSound("door_impact")

        cutscene:setSpeaker(dess)
        cutscene:text("* H-Hey! Kris if this is you, This isn't funny!","surprise_frown")

        Game.world:transitionMusic("snd_paper_rumble")
        Game.world.map:getEvent(1)
        for index, value in ipairs(paper) do
            value.shaking = true
        end
        cutscene:text("* !!", "shock")
        cutscene:text("* ASRIEL! THE FLOOR..!", "shock")
        
        Game.world:transitionMusic("none")
        fall:slideTo(340, 240, 4)
    end
}
