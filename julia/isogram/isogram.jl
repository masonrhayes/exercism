
function isisogram(string)
    filter(isletter, lowercase(string)) |> allunique
end
