using Combinatorics

function allergy_list(score)
    allergens, scores = ["eggs", "peanuts", "shellfish", "strawberries", 
                        "tomatoes", "chocolate", "pollen", "cats"], 
                        [1, 2, 4, 8, 16, 32, 64, 128]
    score = score % 256

    allergy_list = []
    possible_scores = collect(powerset(scores))
    possible_scores_sum = sum.(possible_scores)

    for (index, score_sum) ∈ enumerate(possible_scores_sum)
        score == score_sum && push!(allergy_list, possible_scores[index])
    end
    
    Set(allergens[scores .∈ allergy_list])
end



function allergic_to(score, allergen)
    allergen ∈ allergy_list(score)
end