# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-07T23:00:53.356Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.147.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.147.0/nikcli-ai-darwin-x64.zip"
      sha256 "16a650be6f2d1e685ebdc06ff114476068976921756c7d9dd9efeb3b11eee0d3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.147.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bc9849e56182dcfbabbb1a68955a36365a9087b4a17d9447f82431989511adc1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.147.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5045e2c8760ec3f211c329640db6d44b28aa255e13e47a70f3c5bb87767bf419"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.147.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bc9f90683fe5aeff1568e613aa8e41297ced013fb57b40366afbdb823b9a1a37"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

