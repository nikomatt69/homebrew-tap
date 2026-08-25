# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-25T20:16:08.083Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.316.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.316.0/nikcli-ai-darwin-x64.zip"
      sha256 "be0949b95235380f6241c9a3feb233fe5acf3abc0880d3071b31377b7d59d802"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.316.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1a312726acb89f8f54f053cf5c471e669cc5b274ddf89d90a23c19da129b4d62"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.316.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f24be439f01a4c6c2a1408c85e700f09031cf72923ad7d1aed41467b831f9822"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.316.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "94b88caf0139794ae2586159d8f13628ab83a9ea223630a32b336c8cf4d1959d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

