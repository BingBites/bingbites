FactoryGirl.define do
    factory :user do
      name "foo"
      password "foobar"
      email {"#{name}@example.com"}
    end    
end