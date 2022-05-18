function onCreate()
	-- background shit
	makeLuaSprite('sky', 'Ova/sky', -220, -50);
	setLuaSpriteScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 1.1, 1.1);
	addLuaSprite('sky', false);

	makeLuaSprite('sky2', 'Ova/sky2', -220, -50);
	setLuaSpriteScrollFactor('sky2', 0.9, 0.9);
	scaleObject('sky2', 1.1, 1.1);
	addLuaSprite('sky2', false);

	makeLuaSprite('ice', 'Ova/ice', -220, -50);
	setLuaSpriteScrollFactor('ice', 1, 1);
	scaleObject('ice', 1.1, 1.1);
	addLuaSprite('ice', false);

	makeLuaSprite('ice2', 'Ova/ice2', -220, -50);
	setLuaSpriteScrollFactor('ice2', 1, 1);
	scaleObject('ice2', 1.1, 1.1);
	addLuaSprite('ice2', false);

        makeLuaSprite('ice3', 'Ova/ice3', -220, -50);
	setLuaSpriteScrollFactor('ice3', 1, 1);
	scaleObject('ice3', 1.1, 1.1);
	addLuaSprite('ice3', false);

        makeLuaSprite('sky3', 'Ova/sky3', -220, -50);
	setLuaSpriteScrollFactor('sky3', 0.9, 0.9);
	scaleObject('sky3', 1.1, 1.1);
	addLuaSprite('sky3', false);

        makeLuaSprite('floor', 'Ova/floor', -220, -50);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.1, 1.1);
	addLuaSprite('floor', false);

        setProperty('sky.visible', true);
        setProperty('sky2.visible', true);
        setProperty('ice.visible', true);
        setProperty('ice2.visible', true);
        setProperty('ice3.visible', true);
        setProperty('sky3.visible', false);
        setProperty('floor.visible', false);
end




-- events fo da stage
function onEvent(name, value1, value2)
	if name == 'Play Animation' then
		if value1 == 'future' then
			cameraFlash('game', 'FFFFFF', 1, false)
			setProperty('sky.visible', false);
                        setProperty('sky2.visible', false);
                        setProperty('ice.visible', false);
                        setProperty('ice2.visible', false);
                        setProperty('ice3.visible', false);
                        setProperty('sky3.visible', true);
                        setProperty('floor.visible', true);
                end
                if value1 == 'past' then
			cameraFlash('game', 'FFFFFF', 1, false)
                        setProperty('sky.visible', true);
                        setProperty('sky2.visible', true);
                        setProperty('ice.visible', true);
                        setProperty('ice2.visible', true);
                        setProperty('ice3.visible', true);
                        setProperty('sky3.visible', false);
                        setProperty('floor.visible', false);
                end
        end
end