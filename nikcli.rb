# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-14T19:16:46.283Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.354.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.354.0/nikcli-ai-darwin-x64.zip"
      sha256 "7c5d80875bbb425584e8f215c89fd4a65f308eb2642f0f1757c638aa65ba085c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.354.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fffee896bb4296358803af6d7ce6f085a2614f2312aa79443d8c4bf173c892e6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.354.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "837e5ce5b9bdad7887649912b9f63964cad95f2d316caafeac8680a390962b99"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.354.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "12920a92c36890007f08b6e549d78fca7c18f242b46aaf662d170a4025a69000"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

