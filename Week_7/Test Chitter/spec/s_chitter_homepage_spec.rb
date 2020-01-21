require 'peeps'

describe Peeps do
    it 'shows homepage' do

    expect(subject).to be_a Peeps
    expect(subject).to include("Hello Peeper!")
    expect(subject).to include("Welcome to Chitter")
    end
end