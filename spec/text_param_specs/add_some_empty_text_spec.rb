describe 'Send an empty text' do
  before(:all) {
    @text =  ''
    @returned_error_msg = 'No Input'
  }

  let(:get_text){ get "?text=#{@text}" }

  it 'Returned value should be a String' do
    get_text
    expect_json_types(error: :string)
  end

  it 'Introduced text should match on response' do
    get_text
    expect_json(error: @returned_error_msg)
  end
end