class WordChecker
  def initialize(email_provider, email)
    @subjects = email_provider.get_subjects(email)
  end

  def subjects_contains?(words)
    # To implement
  end
end