function onStepHit()


local squish= 640
local incs = false

	setProperty('gf.visible',true)
    if curStep == 1 then
		noteTweenX('0',0,defaultOpponentStrumX0+squish,0.01,'linear')
		noteTweenX('1',1,defaultOpponentStrumX1+squish,0.01,'linear')
		noteTweenX('2',2,defaultOpponentStrumX2+squish,0.01,'linear')
		noteTweenX('3',3,defaultOpponentStrumX3+squish,0.01,'linear')
		noteTweenX('4',4,defaultPlayerStrumX0-squish,0.01,'linear')
		noteTweenX('5',5,defaultPlayerStrumX1-squish,0.01,'linear')
		noteTweenX('6',6,defaultPlayerStrumX2-squish,0.01,'linear')
		noteTweenX('7',7,defaultPlayerStrumX3-squish,0.01,'linear')
	end
end

function onTweenCompleted(teg)
    if teg=='bopP1' then --Bop BF Icon
        doTweenAngle('BoppinP1', 'iconP1', 0, 4.1);
    elseif teg=='bopP2' then --Bop Opponent Icon
        doTweenAngle('BoppinP2', 'iconP2', 0, 4.1);
    end
end
