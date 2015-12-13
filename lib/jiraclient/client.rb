require 'jiraclient/agile/agile'
require 'jiraclient/projects'

module JiraClient
  class Client
    attr_reader :base_uri

    def initialize(base_uri, username = nil, password = nil)
      @base_uri = base_uri

      @options = {}
      @options[:basic_auth] = { username: username, password: password } if !username.nil? || !password.nil?
    end

    def agile
      Agile::Agile.new(@base_uri, @options)
    end

    def projects
      Projects.new(@base_uri, @options)
    end
  end
end
