class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        render json: students.sort_by{ |obj| obj.grade}.reverse
    end
end
