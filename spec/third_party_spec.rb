require 'net/http'
require 'json'

describe 'ThirdPartySpec' do
  it "should return success or too many requests as status" do
    uri = URI('http://dummy.restapiexample.com/api/v1/employees')
    res = Net::HTTP.get_response(uri)
    expect(["200", "429"].include? res.code).to eq true
  end
end