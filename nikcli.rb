# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-07T20:50:54.674Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.146.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.146.0/nikcli-ai-darwin-x64.zip"
      sha256 "fdcd4c752e4d061ebf45058baad8d968101210f975b981edfa325abfe37615d3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.146.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b41cf035d97a8139c50e036192e327e930cc83e0a76b8e1276c56e2dd291c853"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.146.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9407da4c15bf6c0bb5043f2c3c7a5910bef964181afece1ec7d5a746aaf77c37"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.146.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "243aff0f95ce5bb5b188fe0d47daec8a894c81416c945081480d3aaa67ac89e6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

