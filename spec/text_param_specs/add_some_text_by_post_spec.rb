describe 'Send a POST with some text' do
  before(:all) { @text =  '_long_text_' * 250 }
  let(:post_text){ post '', { text: @text } }

  it 'Returned error should be a [405]' do
    post_text
    expect_status(405)
  end
end