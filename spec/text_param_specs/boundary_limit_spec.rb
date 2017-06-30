describe 'Add maximum limited long text' do
  before(:all) { 
    @too_long_text = 'Am%20banned%20cause%20fucked' * 74
    @accepted_limit_text = 'Am%20banned%20cause%20fucked' * 73
  }

  let(:get_long_text){ get "?text=#{@too_long_text}" }
  let(:get_limit_text){ get "?text=#{@accepted_limit_text}" }

  it 'Returned error should [400]' do
    get_long_text
    expect_status(400)
  end

  it 'Introducing a text up to 73 chars should be accpted' do
    get_limit_text
    expect_status(200)
  end
end