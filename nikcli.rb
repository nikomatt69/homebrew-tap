# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-11T20:53:45.774Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.345.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.345.0/nikcli-ai-darwin-x64.zip"
      sha256 "b4f011893b3c0e500e7bd8d8dc6da0caa3c5486249a6bd8dacf1ccd09af68a06"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.345.0/nikcli-ai-darwin-arm64.zip"
      sha256 "95807b6561d7d7077d0e292b08dca2073371edf1da3be7ead9c90a720ca75240"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.345.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "753018e98bf05cef8812d485d5f0f7d4c9373d28c7137adc43e876edbdfa440c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.345.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "207c8cbfc93d46b4ebe76304a113d3fcd1d4113c8262a3060da5d86175b9f69a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

