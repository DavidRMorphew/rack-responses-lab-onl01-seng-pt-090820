class Application
    def call(env)
        resp = Rack::Response.new

        def self.mil_time
            Time.now.to_s.split(" ")[1].split(":").select.with_index {|e, i| i < 2}.join.to_i
        end
        
        if mil_time > 1200 
            resp.write "Good Afternoon!" 
        else
            resp.write "Good Morning!"
        end
        
        resp.finish 
    end 
end