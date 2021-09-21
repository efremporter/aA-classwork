require_relative "employee.rb"
require "byebug"
class Manager < Employee
    attr_accessor :employees

    def initialize(name, title, salary, boss)
        @employees = []
        super
    end

    def bonus(multiplier)
        queue = [self]
        bonus_arr = []
        # debugger
        until queue.empty?
            current = queue.shift
            if current.is_a?(Manager)
                current.employees.each do |employee|
                  queue << employee
                  bonus_arr << employee.salary
                #grab manager, check if has children. if no children, just add to queue. 
                #if normal employee, add to queue and employee.salary.
                end
            else
                bonus_arr << current.salary if !bonus_arr.include?(current.salary)
            end

            
        end
        bonus_arr.sum * multiplier
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
darren.employees << shawna
darren.employees << david
ned.employees << darren
p ned.bonus(5)
