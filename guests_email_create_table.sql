drop table if exists guests_emails;

CREATE TABLE `guests_emails`(
    `guest_email_id` int NOT NULL ,
    `email_type_id` int NOT NULL,
    `email_address` varchar(250),
    PRIMARY KEY (
        `guest_email_id`
    ) 

);