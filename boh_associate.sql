drop table if exists boh_associate;

CREATE TABLE `boh_associate` (
    `row_id` int  NOT NULL ,
    `boh_associate_id` int  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `boh_associate_email_id` int NOT NULL ,
    `position` varchar(100)  NOT NULL ,
    `stations_trained` varchar(100) NOT NULL ,
    `cooks_review` int  NOT NULL ,
    `hourly_rate` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);