-- The Food Forest - A Lua Code Project
-- ----------------------------------

-- Reset and globally used functions
math.randomseed(os.time())

-- Level setup
local xTiles = 100;
local yTiles = 100;

-- Global variables used throughout
local tileSize = 20;
local running = true;
local foodForest = {};

-- Entity variables
local entities = {};
local entityTypes = {"player", "plant"};

-- Time variables
local day = 0;
local dayTime = 0;

-- Game loop
while running do
	initializeForest()
	for e in ipairs(entities) do
		if e.type == "plant" then
			updatePlant(e)
		elseif e.type == "player" then
			updatePlayer(e)
		end
	end
	dayTime = dayTime + 1;
	if dayTime % (xTiles*yTiles*tileSize) == 0 then
		day = day + 1;
		for e in ipairs(entities) do
			if e.type == "plant" then
				plantGrowth(e)
			elseif e.type == "player" then
				playerHarvest(e)
			end
		end
	end
	draw()
end

-- Initializes the forest
function initializeForest()
	local x, y = 0, 0;
	for x=1, xTiles do
		foodForest[x] = {}
		for y=1, yTiles do
			foodForest[x][y] = {
				type = "empty"
				food = 0
				ent = nil
			}
		end
	end
end 

-- Draws the current state of the food forest
function draw()
	for x=1, xTiles do
		for y=1, yTiles do
			love.graphics.rectangle("fill", x * tileSize, y * tileSize, tileSize, tileSize)
			love.graphics.print(foodForest[x][y].type, x * tileSize, y * tileSize)
			if foodForest[x][y].ent ~= nil then
				local e = foodForest[x][y].ent
				love.graphics.draw(e.img, e.width, e.height)
			end
		end
	end
end

-- Add a new entity (plant or player)
function addEntity(entityType, x, y)
	if entityType == "plant" then
		table.insert(entities, {
			type = "plant"
			width = tileSize
			height = tileSize
			x = x
			y = y
			img = love.graphics.newImage("images/plant.png")
			food = 0
		})
	elseif entityType == "player" then
		table.insert(entities, {
			type = "player"
			width = tileSize
			height = tileSize
			x = x
			y = y
			img = love.graphics.newImage("images/player.png")
			food = 0
		})
	end
end

-- Update the plants
function updatePlant(plant)
	local randX = math.random(xTiles)
	local randY = math.random(yTiles)
	if foodForest[randX][randY].type == "empty" then
		foodForest[randX][randY].type = "plant"
		plant.x = randX
		plant.y = randY
	end
end

-- Update the player
function updatePlayer(player)
	if love.keyboard.isDown("right") then
		if foodForest[player.x + 1][player.y].type == "plant" then
			foodForest[player.x + 1][player.y].type = "empty"
			player.x = player.x + 1
			player.food = player.food + 1
		end
	elseif love.keyboard.isDown("left") then
		if foodForest[player.x - 1][player.y].type == "plant" then
			foodForest[player.x - 1][player.y].type = "empty"
			player.x = player.x - 1
			player.food = player.food + 1
		end
	elseif love.keyboard.isDown("up") then
		if foodForest[player.x][player.y - 1].type == "plant" then
			foodForest[player.x][player.y - 1].type = "empty"
			player.y = player.y - 1
			player.food = player.food + 1
		end
	elseif love.keyboard.isDown("down") then
		if foodForest[player.x][player.y + 1].type == "plant" then
			foodForest[player.x][player.y + 1].type = "empty"
			player.y = player.y + 1
			player.food = player.food + 1
		end
	end
end

-- Grow plants each day
function plantGrowth(plant)
	local randX = math.random(xTiles)
	local randY = math.random(yTiles)
	if foodForest[randX][randY].type == "empty" then
		foodForest[randX][randY].type = "plant"
		foodForest[randX][randY].food = foodForest[randX][randY].food + 1
	end
end

-- Player gains food for each harvesting
function playerHarvest(player)
	if foodForest[player.x][player.y].type == "plant" then
		player.food = player.food + 1
	end
end