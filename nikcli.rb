# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-17T16:42:00.949Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.365.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.365.0/nikcli-ai-darwin-x64.zip"
      sha256 "3cf32610e753703aeab780e981a297b89126e3ff4090f57072535b1f720b4cbe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.365.0/nikcli-ai-darwin-arm64.zip"
      sha256 "9b38b9865c1f1db3dd1cce0918a199a504af80fd08d5d3a49d6fcfd2dd30c32f"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.365.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "954acd5db0de5a286a0993c76bf9d6385f009870da38682539838f427ca8a845"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.365.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "30d0b69aba0d3bbd1a4ce47ef1d39fc080eefcc81acdc554d5192b6cdaa6b237"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

