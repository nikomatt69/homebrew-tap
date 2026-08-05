# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-05T19:34:36.381Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.237.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.237.0/nikcli-ai-darwin-x64.zip"
      sha256 "42a775edb0fccaa473b7fdc893402f4a1ed27554267f74d30ae45328e812415f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.237.0/nikcli-ai-darwin-arm64.zip"
      sha256 "28d6bdc343c511cebaa527901c62703b1e74930d88b4f1c11e94bc67a3076bf2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.237.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a0b913eff3cf8f302eb9c627aaa2500f32b53cbbecc3525a4da89ac5cb8315c3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.237.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0d037f9d66faf3f892dfab579a24eb5657a93201f0886ddcbc228cbe4ccf5e71"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

