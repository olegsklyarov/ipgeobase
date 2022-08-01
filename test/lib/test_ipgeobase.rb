# frozen_string_literal: true

require_relative "../test_helper"

class TestIpgeobase < Minitest::Test
  DELTA = 1e-5

  def setup
    @ip = "8.8.8.8"
    stub_request(:get, "#{Ipgeobase::API}/#{@ip}")
      .to_return(body: load_fixture("#{@ip}.xml"))
  end

  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_it_make_ipgeobase_request
    result = Ipgeobase.lookup(@ip)
    assert { result.city.eql? "Ashburn" }
    assert { result.country.eql? "United States" }
    assert { result.countryCode.eql? "US" }
    assert_in_delta result.lat, 39.03, DELTA
    assert_in_delta result.lon, -77.5, DELTA
  end
end
