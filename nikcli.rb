# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-23T19:36:03.750Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.194.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.194.0/nikcli-ai-darwin-x64.zip"
      sha256 "38c0a2f63ef5fe080c4416653e5d4bbc039c166191ea0d9d66fd7782684705af"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.194.0/nikcli-ai-darwin-arm64.zip"
      sha256 "65f20477d21b2cb4f0f7c569555f0c84b68daa74e703d55b1ac1d6ccdad89dbc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.194.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5192569a7432dc69c252d52c6f2bdd918d1d772d0f0d16584a433f6a19c48153"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.194.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4e968c3be5d5ad945dcf66cd89b5698bb90524b70817c6a35eec8b4dd65a59c0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

