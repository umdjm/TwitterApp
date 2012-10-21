module ApplicationHelper
  class TwitterSearch
    include HTTParty
    format :json
    base_uri 'search.twitter.com'


    def self.search(q, rpp = 100, max_id = nil, page = 1)
      options = {:q => q, :rpp => rpp, :page => page}
      options[:max_id] = max_id unless max_id.blank?

      get('/search.json', :query => options)
    end
  end
end
