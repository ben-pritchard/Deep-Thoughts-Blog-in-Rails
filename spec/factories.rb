FactoryGirl.define do
  factory(:user) do
    username('ben')
    email('ben@ben.com')
    password('asdf;lkj')
  end
end
