# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-01T17:11:02.292Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.226.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.226.0/nikcli-ai-darwin-x64.zip"
      sha256 "799ccf82ec70ae6c2d185dbfb94d644cbe19b68ece661ecb4024a4f97490ceb9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.226.0/nikcli-ai-darwin-arm64.zip"
      sha256 "59a9f70827757413f90eaa009a98f697ab24440fee968047c52b2209283cbf0f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.226.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2c8e31dc1e926867dce00b3d8830d7497bcd98035bf4d0c1ed0c2c79c2bf5ee1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.226.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "18d40f7b71c472c4273689568a7f07770df8dfb17cce7dc1946fbdede2b04e97"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

