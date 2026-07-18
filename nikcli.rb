# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-18T13:31:57.459Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.177.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.177.0/nikcli-ai-darwin-x64.zip"
      sha256 "655b88e484810744f28d8ca05907afbf42437bfcb22a02f8523c42a4c5b5a2dd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.177.0/nikcli-ai-darwin-arm64.zip"
      sha256 "26ecce890db2950cc619ba0eeb86ac9d10e2af689c979bc779d32b99bad00c24"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.177.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d09fc365d5977d1f48441c656d6b6cf14e6ce8881caffb1f0fc4b4dacb545724"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.177.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f7ab04ae4db76929fcf9e0670a9080b924ad849e2b9b8a75d5ba530d1616e8df"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

