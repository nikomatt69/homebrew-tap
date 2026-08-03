# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T19:02:14.617Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.234.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.234.0/nikcli-ai-darwin-x64.zip"
      sha256 "d40e40ab8e4dde04154a3c07c3cba58fd42ba061d8f285d1d569df873af4968b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.234.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5f1660d6dc3aba927892ca02790a9da2b71eb55da5a045643d358d9604dc5eae"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.234.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "93db01edfdad1cf4b42415a802984f26f8a4e880811a53ac3d9581d2b32888c7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.234.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "b2ba543ad9f068edc2937544daea32139680012004269470765370cbf0cf4b46"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

