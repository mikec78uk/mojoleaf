class TestMailers < ActionMailer::Base
  default from: "no-reply@mojoleaf.com"
  
  
  
  def test_added(test)
  
  
  	mail to: test.user.email, subject: "Your design has been added to mojoleaf"  
  end
  
  def test_complete(test)
  
  
  	mail to: @user.email, subject: "Your final mojoleaf results are ready"
  end  
  
  
end
