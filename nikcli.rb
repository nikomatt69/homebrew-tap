# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-18T15:50:21.398Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.293.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.293.0/nikcli-ai-darwin-x64.zip"
      sha256 "18815d97d1107918a72ca900da83b657fe2dfcda37b1b603b0381cf475637640"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.293.0/nikcli-ai-darwin-arm64.zip"
      sha256 "9e06b4532029717695982b6aec8c13de50ab005657a7ebbe359c9218593c9907"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.293.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f220171f77508159782ae371e714138d27ed60e3f89fea6f96b4e85ea07d7caf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.293.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "55e4094cc2b1c791b7f2dd9156a796826c0aae44ca8903e8c1f21ae2472d8c0a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

