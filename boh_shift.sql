drop table if exists boh_shift;

CREATE TABLE `boh_shift` (
    `boh_shift_id` int  NOT NULL ,
    `day_of_week` varchar(20)  NOT NULL ,
    `start_time` time  NOT NULL ,
    `end_time` time  NOT NULL ,     
    PRIMARY KEY (
        `boh_shift_id`
    )
);