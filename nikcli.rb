# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-21T16:53:26.757Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.381.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.381.0/nikcli-ai-darwin-x64.zip"
      sha256 "1d9f10017d74ca1380f9c70b7dca6f399cc6d7d323f908be0fb5874e7f3f5972"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.381.0/nikcli-ai-darwin-arm64.zip"
      sha256 "00bc0627e862a8943f4eaf5821f12917581239db7483408367163d20bd1c3cb6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.381.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b18fe03b80c775ce919c9b8304006068b32510340569c2302bbdd3923bda3fe0"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.381.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "95c90baa8096adf0bfa551dadc97a57ea5fd66c39f37b1dc72cc4bc36049d758"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

