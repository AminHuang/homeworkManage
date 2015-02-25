create table doHomework (stuId varchar(8),
                        hwId int,
                        situation varchar(20), -- 完成状态/是否过了截止时间
                        unique (stuId, hwId),
                        foreign key(stuId) references students(stuId)
                                                        on delete cascade
                                                        on update cascade,
                        foreign key(hwId) references homeworks(hwId)
                                                     on delete cascade
                                                    on update cascade);