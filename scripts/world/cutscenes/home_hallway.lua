return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    darkDoor = function(cutscene, event)

        local dess = cutscene:getCharacter("dess")
        local asriel = Game.world.player

        cutscene:detachFollowers()

        cutscene:wait(cutscene:walkTo(asriel, 380, 284, 0.2, "up", true))
        local choice = cutscene:textChoicer("[voice:asriel]* Open the door?\n", {"Yes", "No"})
        if choice == 2 then -- because Option 1 was the first item of the table
            cutscene:text("[voice:asriel]* It can wait.")
            cutscene:attachFollowers()
            return
        end
        cutscene:detachCamera()
        if not Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1].isOpen then
            Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1]:open() 
        end
        Game.world:transitionMusic("none")
        cutscene:wait(3)
        Game.world:transitionMusic("AUDIO_DOOR")
        cutscene:wait(0.5)
        cutscene:setSpeaker(dess)
        cutscene:text("* Blah blah blah blah blah?", "nervous")
        if(dess.x < 420) then
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "right", true))
        else
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "left", true))
        end
        
        dess:setSprite("walk/up_1")
        cutscene:text("* Blah blah?\n[wait:5]* Blah blah blah blah?", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Blah blah blah.\n[wait:5]* Blah blah.")
        cutscene:setSpeaker(dess)
        cutscene:text("* Blah blah blah blah blah.", "nervous")

    end,


    door_locked = function(cutscene, event)
        Assets.playSound("dooropen")
        cutscene:wait(0.1)
        Assets.playSound("doorclose")
        cutscene:wait(0.5)
        local asriel = Game.world.player
        cutscene:setSpeaker(asriel)
        cutscene:text("* My door's locked?")
        cutscene:text("* I guess I'll have to go through the closet.")
    end
}
