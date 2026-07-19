# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-19T16:03:47.052Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.180.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.180.0/nikcli-ai-darwin-x64.zip"
      sha256 "f11ce7aa1fa742fbc5ace033ddcdeebb33299ba290a42e78db4a4fa6f7c1447d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.180.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3c03606ccd6bd30ad43dc04ebaab3e73663174d872c98c26a72d08917ece63ec"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.180.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "efd516098d8ac6a78a90dafb99352f476e5ec909562be5b4559355024668b6ca"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.180.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "aea590cc6b9845cd5af475bd10d6721a158b7599e64ea3a08abe2067636d59dd"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

