# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-17T03:10:41.125Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.291.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.291.0/nikcli-ai-darwin-x64.zip"
      sha256 "2b3c4cf765ae3cb26741d95e2c372ceb27f60256e8ac1da62d6c5db7239fb49a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.291.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f9edfdd5a7b72e71c9dc0b3dbf8c9d49224acfe16911a2684155725e98516211"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.291.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "255949e89d9fcd5505e302f9a335c691f74859276d644ed467db3ad14bac7129"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.291.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c9abe4cb274d604b605faaddac29ea5d40dc142b67c03b93cdd7cc0eade6cd70"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

