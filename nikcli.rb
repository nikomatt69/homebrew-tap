# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-14T23:24:05.886Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.355.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.355.0/nikcli-ai-darwin-x64.zip"
      sha256 "f03cb6cfc2e0dedc480e01b5835cfdb53f88d9d668a6b56219605a934f54b066"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.355.0/nikcli-ai-darwin-arm64.zip"
      sha256 "113636d16055bfc16e57eed3b9c3b76f94ef705b16cfe92025414f1a49f34476"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.355.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2454fa2beac497ec38bf847101968993ebe4ffc13ab5912400610312a263b039"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.355.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "988c777babb8409efa6afda9ebb982cdfc2b04bee3a72ed967a5008662d4a644"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

