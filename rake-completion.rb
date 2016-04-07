class RakeCompletion < Formula
  desc "Bash completion for rake"
  homepage "https://github.com/mernen/completion-ruby"
  url "https://github.com/mernen/completion-ruby.git",
    :revision => "f3e4345042b0cc48317e45b673dfd3d23904b9a7"
  version "2"

  head "https://github.com/mernen/completion-ruby.git"

  bottle :unneeded

  def install
    bash_completion.install "completion-rake" => "rake"
  end

  test do
    assert_match "-F __rake",
      shell_output("source #{bash_completion}/rake && complete -p rake")
  end
end
