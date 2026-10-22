# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-22T01:48:36.970Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.434.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.434.0/nikcli-ai-darwin-x64.zip"
      sha256 "b309b48ec0462e5b3233b992b58f25f73b338c1b9772c3cd690dc4494624adf9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.434.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0139ef77fdc7a499d62dacaf8f977e9f99082320a8496cb1434f8c45bc04a0b1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.434.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "71bb1b289cc8fbb11a2f742f039cce324258627e0cd4a3544c5b47473b457943"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.434.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "e24f57154a79df3eae77a1cef2fde88269fc26d959903138b8524963eabc8847"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

