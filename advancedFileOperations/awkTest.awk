BEGIN {
    sum_of_grades = 0;
    number_of_students = 0;
}

{
    if ($2 == "A") sum_of_grades += 5;
    if ($2 == "B") sum_of_grades += 4;
    if ($2 == "C") sum_of_grades += 3;
    if ($2 == "D") sum_of_grades += 2;
    if ($2 == "F") sum_of_grades += 1;

    number_of_students++;
}

END {
    average = sum_of_grades / number_of_students;
    grade = "F";
    if (average >= 4.5) grade = "A";
    else if (average >= 3.5) grade = "B";
    else if (average >= 2.5) grade = "C";
    else if (average >= 1.5) grade = "D";

    print "The average is " grade;
}