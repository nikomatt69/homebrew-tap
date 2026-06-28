# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-28T18:11:12.794Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.126.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.126.0/nikcli-ai-darwin-x64.zip"
      sha256 "9ec94911ab023c3e001a798806dad1ce592d0e94cea33d0cf108ee79ca351280"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.126.0/nikcli-ai-darwin-arm64.zip"
      sha256 "03a9f1acf3744afd1dadbb16cc5651b0675dc7b2bb5b331ff6e1dfe84a1789c3"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.126.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "d79ebb5978f54b21a30b09047bbd5a9446739f3be826e23df259a1786f903702"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.126.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "8f909f7cbd39815f7974bb9c267161cc74b97d507b76bd1aafa1f52ebb7672d4"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

