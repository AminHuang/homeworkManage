create table students (stuId varchar(8),
                        stuName varchar(20),
                        admin int, -- 0:no 1:yes
                        email varchar(20),
                        belongMajor varchar(20), 
                        constraint stuKey primary key(stuId),
                        foreign key(belongMajor) references major(majorName)
                                                            on delete cascade
                                                            on update cascade);

