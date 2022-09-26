class StudentsController < ApplicationController
    def students
        # byebug
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        # s = Student.all.order { |student| student.grade }
        # render json: s.grade
        s = Student.all.order(:grade).reverse
        render json: s
    end
end
  