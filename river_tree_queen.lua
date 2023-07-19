--[[The Food Forest

--Create an inventory of items
local items = {
	apple = 5,
	berry = 10,
	citrus = 15,
	mango = 20
}

--Create a function to add items to inventory
function addItem(name, quantity)
	items[name] = quantity or 0
end

--Create a function to remove items from inventory
function removeItem(name, quantity)
	if items[name] >= quantity then
		items[name] = items[name] - quantity
	else
		error("You do not have enough of this item in inventory!")
	end
end

--Create a function to check if an item is in the inventory
function checkItem(name)
	if items[name] ~= nil then
		return true
	else 
		return false
	end
end

--Create a function to show the amount of an item in inventory
function showAmount(name)
	if items[name] ~= nil then
		return items[name]
	else 
		error("This item is not in inventory!")
	end
end

--Create a function to add more of a certain item to the inventory
function increaseItem(name, quantity)
	if items[name] ~= nil then
		items[name] = items[name] + quantity
	else 
		error("This item is not in inventory!")
	end
end

--Create a function to remove a certain item from the inventory
function decreaseItem(name, quantity)
	if items[name] >= quantity then
		items[name] = items[name] - quantity
	else
		error("You do not have enough of this item in inventory!")
	end
end

--Create a function to show all items in the inventory
function showInventory()
	for k,v in pairs(items) do
		print(k .. ": " .. v)
	end
end]]