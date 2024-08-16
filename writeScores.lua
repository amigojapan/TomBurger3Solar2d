function writeScore(score, difficulty)
    path = system.pathForFile( "difficulty" .. difficulty .. ".txt", system.DocumentsDirectory)
    file = io.open(path, "a+")
    file:write(score)
    file:close()
end
-- see if the file exists
function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end
  
  -- get all lines from a file, returns an empty 
  -- list/table if the file does not exist
  function lines_from(file)
    if not file_exists(file) then return {} end
    local lines = {}
    for line in io.lines(file) do 
      lines[#lines + 1] = line
    end
    return lines
  end

function getScoreTable(difficulty)
    -- tests the functions above
    path = system.pathForFile( "difficulty" .. difficulty .. ".txt", system.DocumentsDirectory)
    local lines = lines_from(path)
            
    -- print all line numbers and their contents
    --print("unsorted")
    --for k,v in pairs(lines) do
    --    print('line[' .. k .. ']', v)
    --end

    table.sort(lines, function(a,b) return a > b end)--reverse order sort
    print("list sorted in reverse order")
    return lines
end
--use following to read it
--for k,v in pairs(lines) do
--    print('line[' .. k .. ']', v)
--end