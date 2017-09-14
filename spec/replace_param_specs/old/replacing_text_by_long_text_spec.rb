describe 'Add text and replace it by a long text > 20 chars' do
  before(:all) {
    @text = "Replace%20it%20by%20asterics"
    @replaced = "-" * 21
  }

  let(:replace_text){ get "?text=#{@text}&add=asterics&fill_text=#{@replaced}" }

  it 'Returns an error msg' do
    replace_text
    expect_json(error: "User Replacement Text Exceeds Limit of 20 Characters.")
  end
end