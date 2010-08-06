require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "fetching a commit message" do
  
  before(:all) do
    @ok_result = "<div id=\"content\"><p>fixed!</p></div>"
    @quoted_result = '<div id="content"><p>Issa "test"!</p></div>'
  end
  
  it "should query whatthecommit.com and fetch a message" do
    HTTParty.stub_chain(:get, :body).and_return(@ok_result)
    HTTParty.should_receive(:get).once.with('http://whatthecommit.com/')
    WtCommit::fetch_message
  end
  
  it "should return the proper message" do
    HTTParty.stub_chain(:get, :body).and_return(@ok_result)
    WtCommit::fetch_message.should == "fixed!"
  end
  
  it "should sanitize any quotes" do
    HTTParty.stub_chain(:get, :body).and_return(@quoted_result)
    WtCommit::fetch_message.should == 'Issa \\"test\\"!'
  end
end
