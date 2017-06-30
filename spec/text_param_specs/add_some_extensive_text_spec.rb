describe 'Add some extensive text' do
  before(:all) { @text =  '_long_text_' * 250 }
  let(:get_text){ get "?text=#{@text}" }

  it 'Returned error should be [400]' do
    get_text
    expect_status(400)
  end
end