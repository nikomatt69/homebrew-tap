# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-24T23:37:38.873Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.395.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.395.0/nikcli-ai-darwin-x64.zip"
      sha256 "4e4c2b0e6be948d7f42a760e78f3533018e45f0e938ac1be2adad81885da4bbd"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.395.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1cddf3f9a2768764c6357964451985682412884d4d3c882d15d8105c13132378"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.395.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "db847a0491232a96888d80ad469162922ddc5cb1a20e617aea75409154422c9f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.395.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6642664c3c301a1ddc112d674646946c3970b7a08332654dd9df7f3c3987e4b1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

