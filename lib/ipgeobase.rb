# frozen_string_literal: true

require "addressable/template"
require "bundler/setup"
require "net/http"
require "nokogiri-happymapper"
require "uri"

require_relative "ipgeobase/version"
require_relative "ipgeobase/ip_meta"

# Gem to fetch IP geo information
module Ipgeobase
  API = "http://ip-api.com/xml"
  TEMPLATE = Addressable::Template.new("#{API}/{ip}")

  def self.lookup(ip)
    uri = TEMPLATE.expand({ "ip" => ip }).to_s
    response = Net::HTTP.get(URI(uri))
    IPMeta.parse response, single: true
  end
end
