# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-16T01:46:49.618Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.171.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.171.0/nikcli-ai-darwin-x64.zip"
      sha256 "06e47da28773a7edc93ce2717ae4b633778c87977fcd2853376437b84a50b776"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.171.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a72329f8b56ca8ab834a7bf2329e63f428524e3b65179260c026681e5c4c9462"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.171.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9020f034d531603206ffb41590d6ade13fe525475bfe25a0ada6a41e3286f226"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.171.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f7dbe2858a2c514af3bfcd51bedfc8e5b12c386df4034d68fd8e117b149c64fe"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

