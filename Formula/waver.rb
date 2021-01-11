class Waver < Formula
  desc "Messaging through sound"
  homepage "https://waver.ggerganov.com"
  url "https://github.com/ggerganov/ggwave.git",
    tag:      "waver-v1.3.2-brew-fixed",
    revision: "eb882f155bbf8e502a28928510c3246d82a80c5e"

  license "MIT"

  depends_on "cmake" => :build
  depends_on "sdl2"

  def install
    system "cmake", ".", *std_cmake_args
    system "cmake", "--build", ".", "--target", "install"
  end

  test do
    system "true"
  end
end
