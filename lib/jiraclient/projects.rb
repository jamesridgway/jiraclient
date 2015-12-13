require 'httparty'
module JiraClient
  class Projects
    include HTTParty

    def initialize(base_uri, options)
      self.class.base_uri base_uri
      @global_options = options
    end

    def all(options = {})
      options.merge!(@global_options)
      self.class.get('/rest/api/2/project', options)
    end

    def get(projectIdOrKey, options = {})
      options.merge!(@global_options)
      self.class.get("/rest/api/2/project'#{projectIdOrKey}", options)
    end
  end
end
