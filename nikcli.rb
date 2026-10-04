# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-04T23:20:42.463Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.429.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.429.0/nikcli-ai-darwin-x64.zip"
      sha256 "3b7d12ddfd99037f4fe04a7b6eacdc548dba7b1963bf8445a5c3750b304b272e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.429.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8a1f41d6c7fc4a34873e5b2472b816823f9416b788cbf0dc60f972d64d6988de"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.429.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ad0e7121508a819558ad77b6dcd59089e8c8ec58e89da5bcfc83f38049b2131a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.429.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "02b4983f192d580b4844d289f455e7903aabf1b5a34b1f8ba3f6d68a6e17e072"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

