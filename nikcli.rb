# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-25T18:12:15.742Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.397.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.397.0/nikcli-ai-darwin-x64.zip"
      sha256 "5cc91aa87dc08e239c70a1ec67d33a1fb5ad2a7bb63f4f91045cd8725f7aa333"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.397.0/nikcli-ai-darwin-arm64.zip"
      sha256 "eada9570445009cb7432c1c173eade7bc2ff2bbd8c48f1d3b4a8db44f35056c5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.397.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b2392a0f59d40024de53ac5f4408fc9a145cb0c526336879dc63bb2a633778a7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.397.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2949adb6c29597c9cc3b977b4b22c6a340856cf79d8c15e72c4f8cd07bc54fd7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

