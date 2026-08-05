# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-05T21:30:47.762Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.239.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.239.0/nikcli-ai-darwin-x64.zip"
      sha256 "444673f2d51a94546ad5813fef0a9e3a87c57f5915ab0d8cf936bef4d51442a9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.239.0/nikcli-ai-darwin-arm64.zip"
      sha256 "9c297fc75ec70b4106f3a45f410b44ab6cb232748e17e95fac183544ce7cfc08"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.239.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "446d75ba794d62986a17adc1dd34689326ef0a08c69b5138164557abd8010b7e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.239.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4f4e3b7066aae0f721f9a255de59dca63daec8b35c8c1152eb953c13278971e8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

