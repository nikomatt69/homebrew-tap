# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T15:49:35.240Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.183.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.183.0/nikcli-ai-darwin-x64.zip"
      sha256 "d8d19d99e4a05bf8a56c5d4899161813879112620441fec2a1b42750f071a2c3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.183.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d6fde1cd03483d7d9516249ca0a466075fcc362c6302adfa5c3b524d7c5f7aa3"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.183.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1bf96477c9f238ddc0fba4b3f91b58107008f536ad2b120aed2ecbad622a7fb2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.183.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d30abe34a4a52eb1d1364e36e53cd5ea7fd1a8cb1911f0e436abc7b194dd9071"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

