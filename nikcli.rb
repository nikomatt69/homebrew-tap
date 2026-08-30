# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-30T01:44:19.617Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.322.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.322.0/nikcli-ai-darwin-x64.zip"
      sha256 "211482022b801efe41c20c30383566b40b4ad0cb17388cd2b320ff5534a20cb3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.322.0/nikcli-ai-darwin-arm64.zip"
      sha256 "235c34915970547d19abf0f337e31595e6ed43ed57afaae43dc0592febd8e0c6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.322.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3e8fde4a1ab7faba5d8512a3c447a2a8a288c37d5989d4b3accf888033a891a4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.322.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "95c1e0bdab53738847689a3706d4ec61b43144685d61b81eddfb90d6353c5bba"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

