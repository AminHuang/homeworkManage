create table majorIn (courseId varchar(8),
                        majorId int,
                        unique (courseId, majorId),
                        foreign key(courseId) references courses(courseId)
                                                        on delete cascade
                                                        on update cascade,
                        foreign key(majorId) references major(majorId)
                                                     on delete cascade
                                                    on update cascade);