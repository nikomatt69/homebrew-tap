# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-11T01:06:10.415Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.341.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.341.0/nikcli-ai-darwin-x64.zip"
      sha256 "e3e6d30ad3228a32acc342fee36d10345294b6463f7d98bacf62bd680fc052b6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.341.0/nikcli-ai-darwin-arm64.zip"
      sha256 "62e49256bf14585e68f45cba24d4624baf3fa1067c8bd7190cc1f22bae7aeb5c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.341.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1a3b8af8fe1c8875b9fe16733a0f635da6ecb5814221c5055226a1db620c0dd2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.341.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ee34e36116dbfcbe0a8aa1cd5fb7aae9ee0905cd356547e29633f41f08b03fe2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

