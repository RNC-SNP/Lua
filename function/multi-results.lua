function getMax(array)
	local maxIndex = 1
	local maxValue = array[maxIndex]
	for i, v in ipairs(array) do
		if v > maxValue then
			maxIndex = i
			maxValue = v
		end
	end
	return maxIndex, maxValue
end

print(getMax({21, 32, 19, 8, 45, 98, 56, 78, 67, 89}))