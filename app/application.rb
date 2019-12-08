class Application

    @@items 

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path=="/item/<item.name>"
            @@items.each do |item| item.price
            end

            resp.write "Here is a list of all the item names"
        else
            resp.write "Route not found"
        end

        resp.finish
    end


end
