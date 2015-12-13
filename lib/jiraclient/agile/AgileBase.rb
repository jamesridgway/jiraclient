require 'uri'
module Jiraclient
  module Agile
    class AgileBase
      def querystring_options(options)
        values = {}

        values['startAt'] = options[:start_at] unless options[:start_at].nil?
        values['maxResults'] = options[:max_results] unless options[:max_results].nil?

        return '' if values.empty?
        "?#{URI.encode_www_form(values)}"
      end
    end
  end
end
