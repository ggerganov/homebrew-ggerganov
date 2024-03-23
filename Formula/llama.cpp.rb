$version = "b2514"

class LlamaCpp < Formula
  desc "Inference of Meta's LLaMA model in pure C/C++"
  homepage "https://github.com/ggerganov/llama.cpp"
  version "1.#{$version}"
  sha256 "31d445a96c247bbad349a1f4e353f96d738a74af6da5290d2503e19f99cd21ea"
  license "MIT"

  depends_on :macos
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ggerganov/llama.cpp/releases/download/#{$version}/llama-b1-bin-macos-x64.zip"
    else
      url "https://github.com/ggerganov/llama.cpp/releases/download/#{$version}/llama-b1-bin-macos-arm64.zip"
    end
  end

  def install
    # Install the necessary files to the Homebrew installation directory
    bin.install "bin/main" => "llama-cli"
    bin.install "bin/server" => "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end
