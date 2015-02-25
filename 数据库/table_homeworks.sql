create table homeworks (hwId int,
                        hwContent varchar(20),
                        beginTime varchar(20), -- 作业发布时间
                        deadline varchar(16), 
                        belongCourse varchar(20),
                        constraint hwKey primary key(hwId),
                        foreign key(belongCourse) references courses(courseName)
                                                            on delete cascade
                                                            on update cascade);