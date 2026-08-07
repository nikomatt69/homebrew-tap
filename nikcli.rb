# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-07T21:53:10.821Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.260.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.260.0/nikcli-ai-darwin-x64.zip"
      sha256 "313408ddc8b4b6fb625b13b103f6adf51c66b0f7c0bda49f1fd5cbb9fe0bc368"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.260.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d4d0b103779791050bb6ea7cdfd53026fec09b72e3ad074be193c4a9153aabd8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.260.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d0947185265f7a385d25b45eab3fee41fc469489c49d242a3a230d83bd018730"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.260.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b8fee548c0dc50275ee946109bc6658ad1876e65fcf1319362391f8291c4a176"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

