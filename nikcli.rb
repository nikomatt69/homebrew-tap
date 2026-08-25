# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-25T22:24:53.676Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.317.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.317.0/nikcli-ai-darwin-x64.zip"
      sha256 "3c014e4b918d3515be27f2ac638b0eb3a629a954df71139c84896c02d24b0788"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.317.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0956a25dd17aba7fdfb4c496ec4ed89846e14470f73643e351ad17fa0252e363"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.317.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9066dab162d545358d02cacd813d0768abc651ef59b75c9c79a7ee842eed1dbc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.317.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1aabd0b196a01ae07a304c3536fca4119b5afec32688d3552bd888cca956208a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

