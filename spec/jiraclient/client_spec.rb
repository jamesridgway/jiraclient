require 'spec_helper'

describe Client do
  it 'has a base_uri' do
    client = Client.new('http://jira.example.com')
    expect(client.base_uri).not_to be 'http://jira.example.com'
  end
end
