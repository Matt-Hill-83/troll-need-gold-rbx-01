local module = {}

function module.mergeTables(t1, t2)
    for k, v in pairs(t2) do
        t1[k] = v
        --
    end
    --
end

return module
