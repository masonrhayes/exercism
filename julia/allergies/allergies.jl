
function allergy_list(score)
    allergens, scores = ["eggs", "peanuts", "shellfish", "strawberries", 
                        "tomatoes", "chocolate", "pollen", "cats"], 
                        [1, 2, 4, 8, 16, 32, 64, 128]
    score = score % 256
    is_allergic_to = digits(score, base = 2, pad = length(scores))
    
    Set(allergens[is_allergic_to .== true])
end

function allergic_to(score, allergen)
    allergen ∈ allergy_list(score)
end