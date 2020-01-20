module Enumerable
    
    def my_each
        for i in 0..self.length-1
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
        for selected in my_each
            yield(selected)
            arr.push(selected)
        end
    end

    def my_all
        res = true
        for x in 0..self.length - 1
            if yield(self[i])
                res = true
            end
        end
    end

    def my_any
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
        for item in 0..self.length - 1
            if yield (item)
                counter += 1
            end
        end
    end

    def my_map
        yield

    end

    def my_inject
        yield

    end
end
