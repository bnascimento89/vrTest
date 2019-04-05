load './json_schema/zip_code.rb'
Given("that I want to get an address with a valid zip code") do
    @zip_code = '05734140'
end

When("I make a request in zip code the API") do
    get(url: zip_code_url(@zip_code))
end

Then("I should see all address data") do
    zip_code = ZipCode.new
    schema = zip_code.get_schema
    expect(last_response.code).to eq 200
    expect(validate_schema(schema)).to be true
end
  
private

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