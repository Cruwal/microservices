require 'greetings'

RSpec.describe Greetings do
  let(:response) { described_class.new(params).call }
  let(:params) do
    {
      name: 'Wallace Cruz'
    }
  end

  it 'should return the welcome message' do
    expect(response).to eql('Welcome, WALLACE CRUZ')
  end
end
