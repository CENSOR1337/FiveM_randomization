Config = Config or {}
Config.Dict = Config.Dict or {}

Config.Dict["random_dict_test"] = {
    {
        item_name = "item_a",
        items = { -- this is an array of items (use this incase you need to give multiple item)
            {
                item_name = "item_a",
                amount = 1
            },
            {
                item_name = "item_b",
                amount = 2
            },
            {
                item_name = "item_c",
                amount = 3
            }
        },
        chance = 80,
        amount = 1
    },
    {
        item_name = "item_b",
        items = {},
        chance = 20,
        amount = 1
    }
}
