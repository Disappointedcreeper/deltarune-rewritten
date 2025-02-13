return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    darkDoor = function(cutscene, event)
        if not Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1].isOpen then
            Game.world.stage:getObjects(Registry.getEvent("darkdoor"))[1]:open() 
        end
        Game.world:transitionMusic("none")
        cutscene:wait(3)
        Game.world:transitionMusic("AUDIO_DOOR")
    end
}
