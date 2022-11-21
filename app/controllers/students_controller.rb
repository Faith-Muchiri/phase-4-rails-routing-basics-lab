class StudentsController < ApplicationController
    def index
        students = Student.all
        render json:students
    end
    def grades
        performing_students = Student.order(grade: :desc)
        render json:performing_students
    end
end
