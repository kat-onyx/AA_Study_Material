# Notes on Hashtables
# 1.) Combines arrays and linked-lists
# 2.) Find, insert and delete all tend toward O(1) b/c (I believe) that in the best case
# each array is only of length one, so once we find the key, we can be sure to find the object
# 3.) Each value is given a key which corresponds to it's location in the table.
# 4.) Get the bucket id in the store by finding the hash_key value 
# 5.) Get the slot in the bucket by finding the value

class Hashtable
    attr_accessor :store

    def initialize(num_length = 256)
        @store = []
        (0...num_length).each do |i|
            @store.push([])
        end
    end

    def create_key(key)
        return key.hash % store.length 
    end 

    def get_bucket(key)
        bucket_id = create_key(key)
        return @store[bucket_id]
    end

    def get_slot(key, default = nil)
        bucket = get_bucket(key);
        bucket.each do |kv, i|
            k, v = kv 
            if (k === key) 
                return i, k, v  #to help find existing elements
            end
        end

        return -1, key, default #to help define new elements
    end

    def get(key, default = nil)
        i, k, v = get_slot(key, default = nil)
        return v 
    end

    def set(key, value)
        bucket = get_bucket(key)
        i, k, v = get_slot(key, default = nil)
        if i >= 0 
            @store[i] = [key, value] #reassigning 
        else
            bucket.push([key, value]) #adding
        end
    end

    def delete(key)
        bucket = get_bucket(key)
        (0...bucket).each do |i|
            k, v = bucket[i]
            if k == key
                bucket.delete_at(i)
                break
            end
        end
    end

    def list
        @store.each do |bucket|
            @bucket.each do |k, v|
                puts k, v
            end
        end
    end
end
