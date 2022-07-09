
function isisogram(string)
    string = filter(isletter, lowercase(string))
    join(unique(string)) == string
end
