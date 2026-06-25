# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-25T20:21:00.526Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.119.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.119.0/nikcli-ai-darwin-x64.zip"
      sha256 "122c84b0bc024cb3a9e4e560a97e85dddd7820136a5b28ec545e67e1dc49d084"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.119.0/nikcli-ai-darwin-arm64.zip"
      sha256 "97784c30deb247fa5c114ca496a5208440d2ea19c3801b75903d626424e5088c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.119.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f75fe9eb099323bc8cfdc6e35e18f15ad18abd31380fe2cf88c344c95472d73f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.119.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "889951b784441dbc35d37d07a33d1da799f0ba38897b1237aab66157f337f1dd"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

