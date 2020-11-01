-- Tables are store multiple values in one variable
local my_functions = {}
    
-- Add a few functions to the table
function my_functions.foo()
    print("Foo111!")
end

function my_functions.bar()
    print("Bar!111")
end

-- ModuleScripts must return exactly one value
return my_functions