include Helpers
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
    expect(get_value('ibge')).to eq '3550308'  
    expect(validate_schema(schema)).to be true
    show_value('ibge')
end

Given("that I want to get an address with a invalid zip code") do
    @zip_code = '000000000'
end

Then("I should receive a request error") do
    expect(last_response.code).to eq 400
end
  