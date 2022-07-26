# frozen_string_literal: true

require "test_helper"

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_it_make_ipgeobase_request
    response = load_fixture("8.8.8.8.xml")
    uri = "http://ip-api.com/xml/8.8.8.8"
    stub_request(:get, uri).to_return(body: response)
    result = Ipgeobase.lookup("8.8.8.8")
    assert { result.city.eql? "Ashburn" }
    assert { result.country.eql? "United States" }
    assert { result.countryCode.eql? "US" }
    assert { result.lat.eql? "39.03" }
    assert { result.lon.eql? "-77.5" }
  end
end
