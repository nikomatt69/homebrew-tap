# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-02T21:20:51.370Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.324.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.324.0/nikcli-ai-darwin-x64.zip"
      sha256 "f2044663682a2e9a4a5f800d67e6f08d541abc77001c5b90933dd755727a0d2b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.324.0/nikcli-ai-darwin-arm64.zip"
      sha256 "2d33f803c4a32b2b1e1b48a6e3ad3bab01d644b838e6064734da188d5a0a04f8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.324.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "7b55f3e0d6721963d4a5046c1c56c43bcd1ac2a6b33c726af3720989684ef815"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.324.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "466792c5915607b4da465d1dc4ca329f09ae9c6dc119d3f7373e0a24a9b3a8e2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

