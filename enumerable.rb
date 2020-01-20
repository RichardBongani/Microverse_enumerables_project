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
                break
            end
        end
    end

    def my_any
        
        yield

    end

    def my_none
        yield

    end

    def my_count
        yield

    end

    def my_map
        yield

    end

    def my_inject
        yield

    end
end
