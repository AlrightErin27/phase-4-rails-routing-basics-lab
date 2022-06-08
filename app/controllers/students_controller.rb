class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    students_grades = students.order(grade: :desc)
    render json: students_grades
  end

  def highestgrade
    smartest = Student.all.order(grade: :desc).first
    render json: smartest
  end
end
