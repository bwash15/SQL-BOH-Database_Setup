drop table if exists recipe_ingredient;

CREATE TABLE `recipe_ingredient` (
    `recipe_ingred_id` int NOT NULL ,
    `recipe_ingred_name` varchar(200)  NOT NULL ,
    `ingred_weight_per_recipe` int  NOT NULL ,
    `recipe_ingred_measure` varchar(20)  NOT NULL ,
    `recipe_price_by_measure` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `recipe_ingred_id`
    )
);