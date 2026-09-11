# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-11T01:50:08.152Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.342.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.342.0/nikcli-ai-darwin-x64.zip"
      sha256 "2978d1160b639ef4d604baa594483061f1ebaf707f50c3f8cd915f89440f48ce"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.342.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4ee10ca461bac7676f0a27379fbe428d3d470d29ad4beb18efbee8799be1590c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.342.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c052e5b3a39860b23ee4d416725444ce74c047abfa892371884038be8afda9fb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.342.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f36774a95316f579d02c08bf7e41316bf587b6107dd3a07e2c67a4ff497b05b7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

