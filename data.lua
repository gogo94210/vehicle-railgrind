local carGrindTech = {
    type = "technology",
    name = "car-grind",
    icon = "__vehicle-railgrind__/car_tech.png",
    icon_size = 256,
    prerequisites = {"automobilism", "railway"},
    unit =
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    },
    order = "c-a"
}

data:extend{carGrindTech}
