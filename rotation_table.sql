drop table if exists rotation;

CREATE TABLE `rotation` (
    `row_id` int  NOT NULL ,
    `rota_id` varchar(20)  NOT NULL ,
    `date` varchar(25)  NOT NULL ,
    `shift_id` varchar(20)  NOT NULL ,
    `boh_associate_id` varchar(20)  NOT NULL ,
    `num_associates_on_rota` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);