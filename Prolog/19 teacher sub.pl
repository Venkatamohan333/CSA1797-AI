% Facts representing the relationship between students, teachers, and subjects
teaches(teacher1, math101).
teaches(teacher2, physics201).
teaches(teacher3, programming301).

enrolled(student1, math101).
enrolled(student1, physics201).
enrolled(student2, programming301).
enrolled(student3, math101).

% Query to find the teacher of a subject
teacher_of_subject(Subject, Teacher) :-
    teaches(Teacher, Subject).

% Query to find the subjects enrolled by a student
subjects_enrolled_by_student(Student, Subjects) :-
    enrolled(Student, Subject),
    findall(Subject, enrolled(Student, Subject), Subjects).

% Query to find students enrolled in a subject
students_enrolled_in_subject(Subject, Students) :-
    enrolled(Student, Subject),
    findall(Student, enrolled(Student, Subject), Students).
