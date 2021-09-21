class Manager < Employee
    attr_reader :employees

    def initialize
        @employees = []

    end

    def bonus(multiplier)
        queue = [self]

        until queue.empty?
            current = queue.shift
            if !current.children.nil?
                current.each do |employee|
                #grab manager, check if has children. if no children, just add to queue. 
                #if normal employee, add to queue and employee.salary.
            end
            else
                employee.salary
            end

            
        end

    end

end