require 'greetings'

RSpec.describe Greetings do
  let(:response) { described_class.new(params).call }
  let(:params) do
    {
      name: name
    }
  end
  let(:name) { 'Wallace Cruz' }

  it 'should return the welcome message' do
    expect(response).to eql('Welcome, WALLACE CRUZ!')
  end

  context 'when a name is not provided' do
    let(:name) { nil }

    it 'should return the default message' do
      expect(response).to eql('Welcome!!')
    end
  end
end
