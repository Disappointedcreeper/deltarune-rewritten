return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    enter = function(cutscene, event)
        -- asriel looks for lights, can't find them
        local dess = cutscene:getCharacter("dess")
        local asriel = Game.world.player
        dess.facing = right
        cutscene:detachFollowers()
        dess.x = 20
        cutscene:walkTo(dess, 140, 250, 2, "right", true)
        cutscene:wait(cutscene:walkTo(asriel, 650, 250, 5, "right", true))
        cutscene:setSpeaker(asriel)
        cutscene:text("* ...")
        cutscene:text("* I don't remember the closet being this big.")
        cutscene:wait(cutscene:walkTo(asriel, 800, 250, 2, "right", true))
        cutscene:setSpeaker(dess)
        cutscene:text("* D-Did you find it yet?", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* No not yet, I can't find the walls of the closet.")
        cutscene:wait(cutscene:walkTo(asriel, 750, 250, 5, "right", true))
        cutscene:text("* ...")
        cutscene:text("* I think it's better off we wait in the living room until Toriel comes back from work.")
        cutscene:setSpeaker(dess)
        cutscene:text("* Y-Yeah, let's get out of here.", "nervous")
        -- walk back
        cutscene:wait(cutscene:walkTo(asriel, 200, 250, 5, "left", true))
        cutscene:walkTo(asriel, 130, 250, 0.5)
        cutscene:wait(cutscene:walkTo(dess, 70, 250, 0.5))
        
        -- door slams shut, floor falls
        fall = Game.world:getEvent("fall")
        paper = Game.world.stage:getObjects(Registry.getEvent("paper"))
        Game.world:transitionMusic("none")


        Game.world:getEvent("door"):remove()
        Assets.playSound("door_impact")
        cutscene:wait(1)

        cutscene:setSpeaker(dess)
        cutscene:text("* H-Hey! Kris if this is you, This isn't funny!","surprise_frown")

        Game.world:transitionMusic("snd_paper_rumble")
        Game.world.map:getEvent(1)
        for index, value in ipairs(paper) do
            value.shaking = true
        end
        cutscene:wait(0.4)
        cutscene:text("* !!", "shock")
        cutscene:text("* ASRIEL! THE FLOOR..!", "shock")
        
        Game.world:transitionMusic("none")
        fall:slideTo(340, 240, 4)

        cutscene:walkTo(asriel, 300, 240, 4, "left", true)
        cutscene:wait(cutscene:walkTo(dess, 240, 240, 4, "left", true))
        cutscene:wait(0.1)
        cutscene:walkTo(asriel, 300, 500, 0.5, "left", true)
        cutscene:wait(cutscene:walkTo(dess, 240, 500, 0.5, "left", true))
    end
}