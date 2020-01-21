module Enumerable

    def my_each
        for i in 0..self.length - 1
            yield(self[i])
        end
    end
    

    def my_each_with_index
        for ind in 0..self.length-1
            yield(self[ind],ind)
        end
    end
    

    def my_select
        arr = []
        for i in 1..self.length - 1
            if yield(i)
                arr.push(i)
            end
        end
        arr
    end

    def my_all?
        res = true
        for x in 0..self.length - 1
            if yield(self[i])
                res = true
            end
        end
    end

    def my_any?
        results = true
        for x in 0..self.length - 1
            if yield(x)
                results = true
            end
        end
    end

    def my_none
        answer = true
        for none in 0..self.length - 1
            if yield(self[none])
                answer = false
            end
        end
    end

    def my_count
        counter = 0
        for item in 1..self.length - 1
            if yield (item)
                counter += 1
            end
        end
        counter
    end

    def my_map(proc= nil)
        array = []
        for i in 0..self.length - 1
            yield(self[i])
            array.push(i)
        end
        array
    end

    def my_inject(total = nil)
        total = self[0] unless total
        for a in 1..self.length - 1
            num1 = self[a]
            total = yield total,num1
        end
        total
    end
end

    def multiply_els(arr)
        arr.my_inject( :*)
    end

    my_proc = proc.new{|x| x**2}

    [1,2,3,4,5].my_each{|x| p x*2}
    [1,2,3,4,5].my_each_with_index {|value,index| puts "#{index} item is #{value}"}
    p [1,2,3,4,5].my_select{|number| number % 2 == 0 }
    p [1,2,3,4,5].my_all? { |i| i.even?}
    p [1,2,3,4,5].my_any? {|i| i.any?}
    p [1,2,3,4,5].my_none? {|i| i.none?}
    p [1,2,3,4,5].my_count{ |i| i < 5}
    [1,2,3,4,5].my_map{|element| p element * 2}
    p [1,2,3,4,5].my_map(my_proc)
    [2,4,5].my_inject{|total,num1| p total*num1}
    