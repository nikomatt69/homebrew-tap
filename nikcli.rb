# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-17T16:19:11.165Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.80.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.80.0/nikcli-ai-darwin-x64.zip"
      sha256 "02081f8ce5fd38798cd95cdca8d9f7825248dcb7a1015b2e9ca971f3f3d11815"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.80.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1fc938b1cca0861fd8d58e74504bd5b3cea3ae02e9756fa573f14ea031d69957"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.80.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "796c977bb865b2d8e5ceda23aab6371742bc94d5b763014e5b672022f315ed1d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.80.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "235a04a2811e6d2b46f61bf0bd170fb7da1435c62361e7ebb7a9a6410a9a9c6a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

