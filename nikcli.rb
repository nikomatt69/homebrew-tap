# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-05T22:29:55.585Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.240.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.240.0/nikcli-ai-darwin-x64.zip"
      sha256 "864e84249abcfbb04255fba064c643f9de25d5509ced7075c8cd18cc7bc35cb4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.240.0/nikcli-ai-darwin-arm64.zip"
      sha256 "cc257a42778739a9937411d72cd0979d32bed3f5b81d2e19fb1c06f162aeb41d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.240.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2beba89e3afdec7dcb1991e769fabc9414b673db64e04560758f2e61ce1b2b4d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.240.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "73c942b5f309108eda243ec4760f49011c5e999420b19d26ac6828841ce204a6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

