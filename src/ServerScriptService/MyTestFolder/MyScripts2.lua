local my_functions = {}
print('mysss')

function my_functions.foo(part)
    print("Foo---------test!")
    local newPart = Instance.new("Part", part)
    return newPart

end

return my_functions
