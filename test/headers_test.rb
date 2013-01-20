require File.expand_path('../test_helper', __FILE__)

class HeadersTest < UnitTest
  test 'single asset header' do
    get '/css/behavior.htc'
    assert_nothing_raised do
      Time.parse(last_response.headers["Last-Modified"])
    end
  end
  test 'assets package headers' do
    get '/js/app.js'
    assert_nothing_raised do
      Time.parse(last_response.headers["Last-Modified"])
    end
  end
end