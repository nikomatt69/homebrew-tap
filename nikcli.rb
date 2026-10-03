# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-10-03T22:30:32.102Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.426.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.426.0/nikcli-ai-darwin-x64.zip"
      sha256 "ba87f483bcbfbdcb9bb1227246a898be7683c6cdc19076f36d88b0fe1bb3e7a3"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.426.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8af6dfb9ec693305dc0ab6980d55b4a6449ee7b016244651a4ee6b8b61d7efb7"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.426.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "53f24ea40684efb693fefd2c20eba711990db743fe999250d34ad3fbdef112b8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.426.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f7c78eecaabea9485353bd1e712ec2aaabc07fa49fb75ef2e1629af033108841"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

