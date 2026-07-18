# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-18T19:10:23.884Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.178.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.178.0/nikcli-ai-darwin-x64.zip"
      sha256 "f1ba58b984b1d5b5fc5e49664f6a63f1146cfd2d92b7c30b2cd8ea646498f748"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.178.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c46ee362fa6292fc661297759a3395972d13db004645c24704ad5cee96dc02fe"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.178.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3fc23113e59ddef8085a6e1b82ef6b86fbb87212877e4e044f5fd2c2f7cba4e7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.178.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2c21d873e107fb56f9a90e356d84c4523a0ced1272beb3feaf4ad47d0fca483b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

