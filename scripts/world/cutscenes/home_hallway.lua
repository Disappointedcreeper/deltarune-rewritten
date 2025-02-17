return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    darkDoor = function(cutscene, event)
        cutscene:detachCamera()
        cutscene:detachFollowers()

        local dess = cutscene:getCharacter("dess")
        local asriel = Game.world.player

        cutscene:wait(cutscene:walkTo(asriel, 504, 281, 0.5, "up", true))
        if not Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1].isOpen then
            Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1]:open() 
        end
        Game.world:transitionMusic("none")
        cutscene:wait(3)
        Game.world:transitionMusic("AUDIO_DOOR")
        cutscene:wait(0.5)
        cutscene:setSpeaker(dess)
        cutscene:text("* What the heck.[wait:2].[wait:2]?", "nervous")
        cutscene:wait(cutscene:walkTo(dess, 550, 300, 0.5, "left", true))
        dess:setSprite("walk/up_1")
        cutscene:text("* Asriel?\n[wait:5]* Why is your closet so.[wait:2].[wait:2]. dark?", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Asriel?\n[wait:5]* I have no clue..?")


    end
}
