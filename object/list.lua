List = {}
function List.new()
	return {first = 0, last = -1}
end

function List.PushLeft (list, value)
	  local first = list.first - 1
	  list.first = first
	  list[first] = value
end

function List.PushRight (list, value)
	  local last = list.last + 1
	  list.last = last
	  list[last] = value
end

function List.PopLeft (list)
	  local first = list.first
	  if first > list.last then error("list is empty") end
	  local value = list[first]
	  list[first] = nil
	  list.first = first + 1
	  return value
end

function List.PopRight (list)
	  local last = list.last
	  if list.first > last then error("list is empty") end
	  local value = list[last]
	  list[last] = nil
	  list.last = last - 1
	  return value
end
