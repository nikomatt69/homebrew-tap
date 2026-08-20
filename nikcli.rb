# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-20T23:48:19.088Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.302.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.302.0/nikcli-ai-darwin-x64.zip"
      sha256 "e45e04529fdd5553ee73491b4c5a0b6eda7e4be223d2d50928f04477ebf309ab"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.302.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8a1dd9137bbb9678d45813247565b636818aadcf6a6b6c71328698387ccd17f1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.302.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3dc482b922a9724daea698c83f54b9bc0e34b5839c96fa99c0f864a761b6f1d1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.302.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "298105db30cc519805280881b93e743ee60e31f0179228deb181a189e0227bcc"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

