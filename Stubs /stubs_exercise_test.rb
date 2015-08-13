require 'rspec'
require_relative './word_checker'

describe WordChecker do
  let(:email)          { 'javier.velasco@socialbro.com' }
  let(:email_provider) { instance_double('EmailProvider', get_subjects: ['Super cool email', 'More email subject']) }
  let(:word_checker)   { WordChecker.new(email_provider, email) }

  it "returns true if all words are found" do
    expect(word_checker.words_in_subject_for("cool email")).to eq true
  end

  it "returns false if no words are found" do
    expect(word_checker.words_in_subject_for("nope")).to eq false
  end
end