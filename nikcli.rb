# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-21T18:33:12.966Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.383.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.383.0/nikcli-ai-darwin-x64.zip"
      sha256 "e7980379ee228d51de924f2a3097b5dbb0ef606ac80b09d42fe11ac423d4c338"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.383.0/nikcli-ai-darwin-arm64.zip"
      sha256 "011c3ba873bbe74fd6a26067c61e7a35c4cda77e4f6425f4cb185789a8bfd86a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.383.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ab5b0c67603fcd5468d281b45fc5a9aeafc61c1cb9e36d855eaddd2f1b5787eb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.383.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "592fe94dc7ddb7d8531fdcffaf5395053baa4463fbd828ee9820e9ca4d91bdb8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

