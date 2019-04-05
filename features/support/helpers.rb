module Helpers
    def get(url:)
        begin
          @response = HTTParty.get url
        rescue HTTParty::ExceptionWithResponse => e
          @response = e.response
        end
        puts "\n::GET Request=> URL:#{url}\n\n GET Response:\n Code:#{@response.code}\n Body:#{@response.body}\n"
        @response
    end
    
    def zip_code_url(zipcode)
        "https://viacep.com.br/ws/#{zipcode}/json/"
    end
    
    def last_response
        @response
    end
    
    def validate_schema(schema)
        JSON::Validator.validate!(schema, last_response.body)
    end

    def get_value(field)
        JSON.parse( @response.body, symbolize_names: true)[:"#{field}"]
    end

    def show_value(field)
        puts "O valor do campo #{field} é #{JSON.parse( @response.body, symbolize_names: true)[:"#{field}"]}"
    end
end

