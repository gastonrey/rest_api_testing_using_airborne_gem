describe 'Add some valid text using encoded spaces' do
  before(:all) { @text =  'Test%20me%20on%20the%20space' }
  let(:get_text){ get "?text=#{@text}" }

  it 'Returned value should be a String' do
    get_text
    expect_json_types(result: :string)
  end

  it 'Introduced text should match on response' do
    get_text
    expect_json(result: "Test me on the space")
  end
end