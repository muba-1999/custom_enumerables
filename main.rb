module Enumerable
    def my_each
      return (:my_each) unless block_given?
      for ele in self
        yield ele
      end
    end
    
    def my_each_with_index
      return (:my_each_with_index) unless block_given?

      idx = 0
      for i in self
        yield i, idx
        idx += 1
      end
    end

    def my_select
      result = []

      for ele in self
        result << ele if yield(ele) == true
      end
      result
    end

    def my_all?
      for ele in self
        return false if yield(ele) == false
      end
      true
    end

    def my_any?
      for ele in self
        return true if yield(ele) == true
      end
      false
    end

    def my_none?
      for ele in self
        return false if yield(ele) == true
      end
      true
    end

    def my_count
      count = 0
      return self.length unless block_given?

      for ele in self
        if yield(ele) == true
          count += 1
        end
      end
      count
    end

    def my_map(&blk)
      result = []

      for i in self
        result << blk.call(i)
      end
      return result
    end

    def my_inject(*args)
      val = args.size > 0
      count = val ? args[0] : self[0]

      for ele in self.drop(val ? 0 : 1)
        count = yield(count, ele)
      end
      count
    end
end