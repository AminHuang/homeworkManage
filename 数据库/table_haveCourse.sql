create table haveCourse (stuId varchar(20),
                        courseId int,
                        unique (stuId, courseId),
                        foreign key(stuId) references students(stuId)
                                                    on delete cascade
                                                    on update cascade, -- 级联
                        foreign key(courseId) references courses(courseId)
                                                    on delete cascade
                                                    on update cascade);