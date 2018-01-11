require "./store_item.rb"
require "./food.rb"

item_1 = StoreFront::Store.new(
                    "boat",
                    "red",
                    10
                    )
item_2 = StoreFront::Store.new(
                    "car",
                    "green",
                    15
                    )
item_3 = StoreFront::Store.new(
                    "wingsuit",
                    "rainbow",
                    25
                    )

food = StoreFront::Food.new(
                "tacos",
                "yellow",
                3
                )
