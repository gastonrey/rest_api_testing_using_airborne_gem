describe 'Add some valid text' do
  before(:all) { @text =  'This_a_test_from_user_GREY' }
  let(:get_text){ get "?text=#{@text}" }

  it 'Returned value should be a String' do
    get_text
    expect_json_types(result: :string)
  end

  it 'Introduced text should match on response' do
    get_text
    expect_json(result: @text)
  end
end