FactoryGirl.define do
  factory :claim do
    operator nil
    client nil
    service nil
    location nil
    valid false
    serviceman nil
    closed false
    status nil
    description 'MyText'
  end
end
