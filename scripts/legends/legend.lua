---@param cutscene LegendCutscene
return function(cutscene)
    cutscene:wait(0)
    Game.legend.cover.visible = false
    Game.legend.music:play("legend")
    cutscene:text("[style:dark]LET ME TELL YOU A PROPHECY,", "110")
    cutscene:wait(1.2)
    cutscene:text("[style:dark]\nA PROPHECY THAT IS INEVITABLE.", "90")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]AND AS THE ONE BEFORE ME,", "130")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nI SHALL TELL IT TO YOU.", "146")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]BUT BEWARE.", "240")
    cutscene:wait(2)
    cutscene:removeText()
    cutscene:text("[style:dark]THIS PROPHECY\nIS ONE OF\n[wait:20][color:purple]DESTRUCTON.[color:reset]", "double_left")
    cutscene:wait(1)
    cutscene:text("[style:dark]THIS PROPHECY\nIS ONE OF\n[wait:20][color:yellow]SALVATION.[color:reset]", "double_right")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]WITH A WORLD\nBLANKETED IN\n[wait:20][color:purple]DARKNESS.[color:reset]", "double_left")
    cutscene:wait(1)
    cutscene:text("[style:dark]AWAITING FOR\nA SHINING\n[wait:20][color:yellow]LIGHT.[color:reset]", "double_right")
    cutscene:wait(3)
    cutscene:removeText()

    cutscene:text("[style:dark]LET ME TELL YOU THE PROPHECY", "100")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nOF [color:yellow][wait:5]DELTA [wait:5]RUNE.[color:reset]", "218")
    cutscene:wait(3)
    cutscene:removeText()

    Game.legend:addSlide("legend/spr_introimage1_0"):setScale(2, 2)
    cutscene:text("[style:dark]TWO SIDES,", "250")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nONE OF LIGHT,[wait:5] AND ONE OF DARK.", "90")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]LIVING IN HARMONY[wait:5].[wait:5].[wait:5].", "186")
    cutscene:wait(3)
    cutscene:removeText()
    Game.legend:removeSlides()
    Game.legend:addSlide("legend/spr_introimage1_1"):setScale(2, 2)
    cutscene:text("[style:dark]HA HA HA[wait:5].[wait:5].[wait:5].", "250")
    cutscene:wait(1.5)
    cutscene:text("[style:dark]\n[wait:10]HOW OBLIVIOUS THEY WERE.", "146")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]THEY DIDN'T KNOW THAT THEIR", "110")
    cutscene:wait(0.8)
    cutscene:text("[style:dark]\nFATES[wait:5] WERE ALREADY SEALED[wait:5].[wait:5].[wait:5].", "120")
    cutscene:wait(4)
    cutscene:removeText()

    Game.legend:removeSlides()
    Game.legend:addSlide("legend/spr_introimage2_0"):setScale(2, 2)
    cutscene:text("[style:dark]A CALAMITY SO STRONG,", "160")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nTHAT THE BELLS RANG", "174")
    cutscene:wait(0.8)
    cutscene:text("[style:dark]\n\nTHE DEATH'S TOLL.", "194")
    cutscene:wait(4)
    cutscene:removeText()
    cutscene:text("[style:dark]IN DESPAIR,[wait:5] EVERYONE PRAYED.", "110")
    cutscene:wait(4)
    cutscene:removeText()
    Game.legend:removeSlides()
    Game.legend:addSlide("legend/spr_introimage3_1"):setScale(2, 2)
    cutscene:text("[style:dark]AND THREE HEROES APPEARED", "120")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nAT WORLD'S EDGE.", "200")
    cutscene:wait(4)
    cutscene:removeText()
    
    cutscene:text("[style:dark]TRYING TO STOP", "210")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nANGEL'S HEAVEN[wait:5].[wait:5].[wait:5].", "210")
    cutscene:wait(4)
    cutscene:removeText()
    Game.legend:removeSlides()
    Game.legend:addSlide("legend/spr_introimage5_0"):setScale(2, 2)
    cutscene:text("[style:dark]THEY FOUGHT", "240")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nWITH EVERYTHING THEY COULD.", "114")
    cutscene:wait(4)
    cutscene:removeText()
    cutscene:text("[style:dark]BUT THEY FAILED.", "200")
    cutscene:wait(4)
    cutscene:removeText()

    Game.legend:removeSlides()
    cutscene:text("[style:dark]THEN THE WORLD", "210")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nWAS COVERED", "234")
    cutscene:wait(1)
    cutscene:text("[style:dark]\n\nIN [color:purple]DARKNESS.[color:reset]", "234")
    cutscene:wait(5)
    cutscene:removeText()
    
    cutscene:text("[style:dark]BUT[wait:5].[wait:5].[wait:5].", "300")
    cutscene:wait(2)
    cutscene:removeText()
    cutscene:text("[style:dark]A SPARK OF HOPE WAS LIT,", "140")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nAS THE WORLD WAS RESTARTED.", "114")
    cutscene:wait(4)
    cutscene:removeText()

    cutscene:text("[style:dark]HERE IS WHERE THREE NEW", "140")
    cutscene:wait(0.8)
    cutscene:text("[style:dark]\nHEROES ARE CHOSEN.", "186")
    cutscene:wait(4)
    cutscene:removeText()

    Game.legend:addSlide("legend/spr_introimage4_0"):setScale(2, 2)
    cutscene:text("[style:dark]A [color:yellow]SAVIOR,[color:reset]", "text_human")
    cutscene:wait(1)
    Game.legend:addSlide("legend/spr_introimage4_1"):setScale(2, 2)
    cutscene:text("[style:dark]A [color:red]DESTRUCTOR,[color:reset]", "text_monster")
    cutscene:wait(1)
    Game.legend:addSlide("legend/spr_introimage4_2"):setScale(2, 2)
    cutscene:text("[style:dark]AND A [color:purple]VESSEL.[color:reset]", "text_prince")
    cutscene:wait(3)
    cutscene:removeText()
    Game.legend:removeSlides()

    cutscene:text("[style:dark]WITH THESE NEW HEROES,", "150")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nTHERE WAS A NEW FATED OBJECTIVE.", "70")
    cutscene:wait(4)
    cutscene:removeText()
    cutscene:text("[style:dark]WHEN THE TIME COMES,", "170")
    cutscene:wait(1)
    cutscene:text("[style:dark]\nSTOP THE [color:red]ROARING KNIGHT.[color:reset]", "134")
    cutscene:wait(5)
    cutscene:removeText()
    cutscene:text("[style:dark][color:purple]AND AT WORLD'S EDGE,[color:reset]", "170")
    cutscene:wait(1)
    cutscene:text("[style:dark]\n[color:purple]SHATTER THE TWILIGHT REVERIE.[color:reset]", "100")
    cutscene:wait(3)
    cutscene:removeText()
    cutscene:text("[style:dark]FINALLY RESTORING THE BALANCE", "90")
    cutscene:wait(1.4)
    cutscene:text("[style:dark]\nOF [color:yellow]LIGHT[color:reset][wait:5] AND [color:purple]DARK.[color:reset]", "186")
    cutscene:wait(3)
    cutscene:removeText()
end