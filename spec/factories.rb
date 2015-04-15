FactoryGirl.define do
  factory(:user) do
    username('ben')
    email('ben@ben.com')
    password('asdf;lkj')
  end
  factory(:post) do
    title('To be, or not to be...')
    entry('that is the question')
  end
end
