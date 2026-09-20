# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-20T20:50:00.744Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.379.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.379.0/nikcli-ai-darwin-x64.zip"
      sha256 "70b40774ba99bfd8aff64a20861d3dc7fb8e268fa7dbd670920241a28cb01540"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.379.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5811933cd5917f90db3fc2b545310299cedebeb25ba1f22ee2b4ce82d215d319"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.379.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "405f82e5e224df66a93677d9e65fdae247f4cb6fc8ab7db369af9bea6899a4ed"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.379.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "e1e5cd79222964176ca7c7be4b5187f8f6d51932772f7f055139f0212bedb669"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

