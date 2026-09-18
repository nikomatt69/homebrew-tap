# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-18T14:35:01.798Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.371.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.371.0/nikcli-ai-darwin-x64.zip"
      sha256 "e44ba50677c263232f15db0bdcb0d13a176df8d141d080fb5990deff04ea2c83"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.371.0/nikcli-ai-darwin-arm64.zip"
      sha256 "bb205b07349aa24880df1899804bf82a54b36ea32817f9b56d74b98720a73fa2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.371.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ce3d28f21809e61b41ee46566acfb56ce5e81f0f0b4850eacb9a13a1d581719e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.371.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "745a4dfdd4411d28410b941b8ae213d31d38a57309e1be2a74d2073c9e48c72e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

