# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-13T11:53:58.436Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.74.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.74.0/nikcli-ai-darwin-x64.zip"
      sha256 "5091427aa0278d2121496fec4274199936ac0267b18cd94891990db30e7f3ee2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.74.0/nikcli-ai-darwin-arm64.zip"
      sha256 "abbcb2045207ac941894bf9fbf37a03d7b08e8ee8d9e91cc50f44749ccdedade"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.74.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "e4fbddc50086576ee732f918079fe8d9da895f28b717eba88dbfcb8cca6db32d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.74.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9c9642de4a811fd6333287740d16d417e3001c96ae938be41b4852364e00ed18"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

