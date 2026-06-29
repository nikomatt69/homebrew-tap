# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-29T20:16:23.500Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.129.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.129.0/nikcli-ai-darwin-x64.zip"
      sha256 "dca40fb7201c0cf057965a674178fafabb4aef3bd0f7b11e7e4f19cfa1040e07"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.129.0/nikcli-ai-darwin-arm64.zip"
      sha256 "0b3745df39b6048c8719eb5462f90def26bd1bc2cf8e1ca93bccaef84ca28313"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.129.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "419f65bb474faf999f8cda30d00cf7f74fbdefa4ee69712de55c05c431492e1c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.129.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "392c4c90539e94023a34ad75e543b2567795116b58f106dfe2a1a504c2f285cd"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

