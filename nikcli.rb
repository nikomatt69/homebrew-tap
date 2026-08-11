# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T19:02:39.371Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.269.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.269.0/nikcli-ai-darwin-x64.zip"
      sha256 "37eadad4ddb96acfc727da0d7ad9ed19916fb1ce643547fd514a82967f1715c9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.269.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bcc0f8dcbb2b4309aa8d30dd7b83780f1fed3d7268fcafc2011611ce1418a903"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.269.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "da101b56573f864394f433a3b469006f3060b4a37c06f40950f07b3f76259736"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.269.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0f10b1dd41a16ea07c9844a11629e519f7b6ee5e0a31860137f425c782e4c752"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

