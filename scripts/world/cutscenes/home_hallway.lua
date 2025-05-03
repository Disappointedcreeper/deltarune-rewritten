return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene


    door_locked = function(cutscene, event)
        Assets.playSound("dooropen")
        cutscene:wait(0.1)
        Assets.playSound("doorclose")
        cutscene:wait(0.5)
        asriel = Game.world.player
        dess = cutscene:getCharacter("dess")
        cutscene:setSpeaker(asriel)
        cutscene:text("* ...")
        cutscene:text("* What?\n[wait:5]* Why would the door be locked?")
        cutscene:text("* Did mom or Kris leave the lock on before leaving?")
        cutscene:wait(0.25)
        Assets.playSound("dooropen")
        cutscene:wait(0.1)
        Assets.playSound("doorclose")
        cutscene:wait(0.5)
        cutscene:text("* ...\n[wait:5]* It doesn't budge.")
        cutscene:text("* No big problem, we can go through the closet, it's connected to the bedroom.")
        cutscene:wait(cutscene:walkTo(asriel, 600, 292, 0.25, "down", true))
        cutscene:wait(cutscene:walkTo(asriel, 380, 292, 2, "left", true))



        cutscene:detachFollowers()

        cutscene:wait(cutscene:walkTo(asriel, 380, 284, 0.2, "up", true))
        cutscene:detachCamera()
        if not Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1].isOpen then
            Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1]:open() 
        end
        Game.world:transitionMusic("none")
        cutscene:wait(3)
        Game.world:transitionMusic("AUDIO_DOOR")
        cutscene:wait(0.5)
        cutscene:setSpeaker(dess)
        cutscene:text("* ...", "nervous")
        cutscene:text("* Hey Azzy, did you do something to your closet?", "nervous")
        cutscene:text("* I don't remember it being THIS dark.", "nervous")
        if(dess.x < 420) then
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "right", true))
        else
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "left", true))
        end
        
        cutscene:wait(cutscene:walkTo(dess, 420, 300, 0, "up", true))
        cutscene:setSpeaker(asriel)
        cutscene:text("* Maybe we can try to enter and turn on the light?")
        cutscene:setSpeaker(dess)
        cutscene:text("* Well... You go first then.", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Really?\n[wait:5]* Does a bit of darkness scare you?")
        cutscene:setSpeaker(dess)
        cutscene:text("* ...", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Okay okay, I'll go first.")
        cutscene:wait(cutscene:walkTo(asriel, 380, 250, 1, "up", true))
        cutscene:wait(cutscene:walkTo(dess, 380, 300, 1, "left", true))
        cutscene:wait(cutscene:walkTo(dess, 380, 300, 0, "up", true))
        cutscene:wait(0.5)
        cutscene:walkTo(dess, 380, 250, 1, "up", true)
        cutscene:attachFollowers()
        cutscene:wait(0.2)
        cutscene:wait(cutscene:mapTransition("hometown/interior/home_dark"))
        cutscene:gotoCutscene("home_dark.enter")
    end,




    --outdated dark door opening
    --[[
    darkDoor = function(cutscene, event)

        local dess = cutscene:getCharacter("dess")
        local asriel = Game.world.player

        cutscene:detachFollowers()

        cutscene:wait(cutscene:walkTo(asriel, 380, 284, 0.2, "up", true))
        cutscene:detachCamera()
        if not Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1].isOpen then
            Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1]:open() 
        end
        Game.world:transitionMusic("none")
        cutscene:wait(3)
        Game.world:transitionMusic("AUDIO_DOOR")
        cutscene:wait(0.5)
        cutscene:setSpeaker(dess)
        cutscene:text("* ...", "nervous")
        cutscene:text("* Hey Azzy, did you do something to your closet?", "nervous")
        cutscene:text("* I don't remember it being THIS dark.", "nervous")
        if(dess.x < 420) then
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "right", true))
        else
            cutscene:wait(cutscene:walkTo(dess, 420, 300, 0.5, "left", true))
        end
        
        cutscene:wait(cutscene:walkTo(dess, 420, 300, 0, "up", true))
        cutscene:setSpeaker(asriel)
        cutscene:text("* Maybe we can try to enter and turn on the light?")
        cutscene:setSpeaker(dess)
        cutscene:text("* Well... You go first then.", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Really?\n[wait:5]* Does a bit of darkness scare you?")
        cutscene:setSpeaker(dess)
        cutscene:text("* ...", "nervous")
        cutscene:setSpeaker(asriel)
        cutscene:text("* Okay okay, I'll go first.")
        cutscene:wait(cutscene:walkTo(asriel, 380, 250, 1, "up", true))
        cutscene:wait(cutscene:walkTo(dess, 380, 300, 1, "left", true))
        cutscene:wait(cutscene:walkTo(dess, 380, 300, 0, "up", true))
        cutscene:wait(0.5)
        cutscene:walkTo(dess, 380, 250, 1, "up", true)
        cutscene:attachFollowers()
        cutscene:wait(0.2)
        cutscene:wait(cutscene:mapTransition("hometown/interior/home_dark"))
    end
    ]]--
}
