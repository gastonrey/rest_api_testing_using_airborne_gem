describe 'Add some valid text with a banned word' do
  before(:all) { @text =  'Am%20banned%20cause%20fucked' }
  let(:get_text){ get "?text=#{@text}" }

  it 'Returned value should be a String' do
    get_text
    expect_json_types(result: :string)
  end

  it 'Introduced text should contain the word replaced by *' do
    get_text
    expect(json_body[:result].include?"*").to be_truthy
    expect(json_body[:result].include?"fucked").to be_falsey
  end
end