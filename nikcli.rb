# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-16T03:43:05.224Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.287.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.287.0/nikcli-ai-darwin-x64.zip"
      sha256 "6c4e0857f555f98812e4145b53e1df4086c82a7e6905e37654499919ee8fe673"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.287.0/nikcli-ai-darwin-arm64.zip"
      sha256 "aa8646de4f4fffb07b4d2c02333f2c662a49f134020ba8b8a148d5118c23220e"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.287.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ceb9d377b3c30c5f7722a4fad488bbd4ffc79051f56bb3ce7e9c2494c2015a91"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.287.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6dd655907e671ab09e4bb354d5baa10536cd95ae5a75f8a9cd5b1a66ed943c93"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

