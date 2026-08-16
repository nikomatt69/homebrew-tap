# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-16T22:49:43.278Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.288.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.288.0/nikcli-ai-darwin-x64.zip"
      sha256 "f7916fb189984ffd8aa779c38792c72ba8b133545b70f6408bf81861143cd051"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.288.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b2947ed4efeab2fdf0e9d2efd644a4daddd880bf3ef53e7bff7616724ed1af67"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.288.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9d9c47f4515803193f2b79256035410a4ecb66e9cb34090a17b19529c9cb8d10"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.288.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a54d283d9efcdb228333ed516130ba0163666092e6e6091d3838671f72f4ec8f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

