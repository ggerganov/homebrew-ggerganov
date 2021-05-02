class Waver < Formula
  desc "Messaging through sound"
  homepage "https://waver.ggerganov.com"
  url "https://github.com/ggerganov/ggwave.git",
    tag:      "waver-v1.4.0",
    revision: "74f35ebcf0a2fa300536b4c39979ebea2f7923fa"

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
