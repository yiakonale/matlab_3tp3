opts = detectImportOptions('course_grades_2023.xlsx');
opts = setvartype(opts, {'ID_Number', 'Name'}, 'string');
table = readtable('course_grades_2023.xlsx', opts);


labMark(table);
examMark(table);
finalMark(table);

%%d
newRows = {'Ioannis Papaspyridis', 'papaspyi', 1, 2, 3, 4, 5, 1, 2, 3, 4;
            'Danial Noori Zadeh', 'noorizad', 2, 3, 4, 5, 6, 2, 3, 4, 5};
table = [table;newRows];

%%a
function [maxName, maxGrade] = labMark(table)
    newTable = table;
    newTable(1,:) = [];
    gradeSum = newTable.Lab_1 + newTable.Lab_2 + newTable.Lab_3 + newTable.Lab_4;
    maxGrade = max(gradeSum);
    maxIndex = gradeSum == maxGrade;
    maxName = newTable.Name(maxIndex);
    disp(maxGrade);
    disp(maxName);
end

%%b
function [maxName, maxGrade] = examMark(table)
    newTable = table;
    newTable(1,:) = [];    
    gradeSum = table.Exam_1 + table.Exam_2 + table.Exam_3 + table.Exam_4;
    maxGrade = max(gradeSum);
    maxIndex = gradeSum == maxGrade;
    maxName = newTable.Name(maxIndex);
    disp(maxGrade);
    disp(maxName);
end

%%c
function [maxName, maxGrade] = finalMark(table)
    newTable = table;
    newTable(1,:) = []; 
    gradeSum = table.Lab_1 + table.Lab_2 + table.Lab_3 + table.Lab_4 + ...
        table.Midterm + table.Exam_1 + table.Exam_2 + table.Exam_3 + table.Exam_4;
    maxGrade = max(gradeSum);
    maxIndex = gradeSum == maxGrade;
    maxName = newTable.Name(maxIndex);
    disp(maxGrade);
    disp(maxName);
end