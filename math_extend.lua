local M = {}

function M.round(number)
	return number >= 0 and math.floor(number + 0.5) or math.ceil(number - 0.5)
end

function M.get_distance(vec1, vec2)
	local x = vec1.x - vec2.x
	local y = vec1.y - vec2.y
	local z = vec1.z - vec2.z
	return math.sqrt(x*x + y*y + z*z)
end

function M.clamp(number, min, max)
	if number > max then
		return max
	elseif number < min then
		return min
	else
		return number
	end
end

function M.sign(number)
	if number > 0 then
		return 1
	elseif number < 0 then
		return -1
	else
		return 0
	end
end

return M