# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-28T16:48:07.446Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.125.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.125.0/nikcli-ai-darwin-x64.zip"
      sha256 "5a1ca22911438af4b4497cb44299243a0255badc9dae04f027014d4c10f64f09"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.125.0/nikcli-ai-darwin-arm64.zip"
      sha256 "10ac1bed9ee1922420df0478c219383101becec07383878d0d5709f655ce3067"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.125.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "43447875c2dac6fede3c16a20d4ef18ceb71541293f5c1def7edc9d8e9311034"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.125.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d2a01a54d8cc60c82d256707b9338313243af9fd2af575a54c011fbc0a32450e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

