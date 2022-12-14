drop table if exists recipe;

CREATE TABLE `recipe` (
    `row_id` int  NOT NULL ,
    `recipe_id` varchar(20)  NOT NULL ,
    `recipe_ingred_id` int  NOT NULL ,   
    `recipe_ingred_quantity` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);