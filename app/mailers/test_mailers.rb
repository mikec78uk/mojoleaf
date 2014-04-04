class TestMailers < ActionMailer::Base
  default from: "no-reply@mojoleaf.com"
  
  
  
  def test_added(test)
  	@test = test
  	
  	@user = @test.user
  
  	mail to: @user.email, subject: "Your design has been added to mojoleaf"  
  end
  
  def test_complete(test)
  	@test = test
  	
  	@user = @test.user  
  
  	mail to: @user.email, subject: "Your final mojoleaf results are ready"
  end  
  
  
end
