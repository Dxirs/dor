if npc.x >= 4225 and statusdialog == 1  and statusdialog_1 == 1 then
npcstate = 2
elseif npc.x <= 3800 and statusdialog == 1  and statusdialog_1 == 1 then
npcstate = 1
end
if npcstate == 3 and spd == 1 then
npc.sprite = sprites.dialog
end
if npcstate == 2 and spd == 1 then
npc.x = npc.x - npc.speed * dt
npc.sprite = sprites.npcanimm2
else
if npcstate == 1 and spd == 1 then
npc.x = npc.x + npc.speed * dt
npc.sprite = sprites.npcanimm
end
end
if love.keyboard.isDown("e") and distanceBetween(npc.x+38,npc.y,player.body:getX(),player.body:getY()) < 90 and statusdialog_1 == 1 then
npcstate = 3
statusdialog = 2
kg = 2
end
if love.keyboard.isDown("r") and distanceBetween(npc.x+38,npc.y,player_1.body1:getX(),player_1.body1:getY()) < 90 and statusdialog == 1 then
npcstate = 3
statusdialog_1 = 2
ki = 2
end
if distanceBetween(npc.x+38,npc.y,player.body:getX(),player.body:getY()) > 90 and statusdialog_1 == 1 then
statusdialog = 1
end
if distanceBetween(npc.x+38,npc.y,player.body:getX(),player.body:getY()) > 90 and kgs == 3 and statusdialog_1 == 1 then
statusdialog = 5
npc.speed = 200
npc.x = npc.x + npc.speed * dt
sprites.dialog = sprites.npcanimm
spd = 2
end
if distanceBetween(npc.x+38,npc.y,player_1.body1:getX(),player_1.body1:getY()) > 90 and statusdialog == 1 then
statusdialog_1 = 1
end
if distanceBetween(npc.x+38,npc.y,player_1.body1:getX(),player_1.body1:getY()) > 90 and kis == 3 and statusdialog == 1 then
statusdialog_1 = 5
npc.speed = 200
npc.x = npc.x + npc.speed * dt
sprites.dialog = sprites.npcanimm
end
