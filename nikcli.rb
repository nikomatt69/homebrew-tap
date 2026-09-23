# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-23T01:24:36.041Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.392.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.392.0/nikcli-ai-darwin-x64.zip"
      sha256 "736d57a2ac6a0ad852342ec55c5f963193b284339867a6028a582bf78b5e2bbd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.392.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bbb002351cbda8ec2fc1600152c36f3398fdcab1df8e6a740b2572e0e1fa5e89"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.392.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1a04de5a49bd41b3734efa6a71c93e0e7ecd6fc1212e033c6e383d19cd07f9d2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.392.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "5467b11cef8cca13b87ad685202fd6b2e01a8496cff59f1c9744d22e2028d13d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

