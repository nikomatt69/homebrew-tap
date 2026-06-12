# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-12T18:47:58.782Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.68.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.68.0/nikcli-ai-darwin-x64.zip"
      sha256 "be880507fd8516579461197d2b9248a9fd3fdf1a76fecc58963f607629f3c936"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.68.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5ef0f1ac33a9a06fec596cde4ed54d4c16822ba982a63c21d6dde023d03cb320"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.68.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "62a4295b67f3be846abdad5ad01b24150005f784e26292eefd42285f10f97ec4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.68.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "01d19b904f3d4b0ce0f8aef06c210c6ce93c5af2e0ec20fc82f513310c27a934"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

