# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-22T01:38:49.074Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.189.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.189.0/nikcli-ai-darwin-x64.zip"
      sha256 "fa7d3fed05091aec99a7ea31ea458051c5a61035bac88578fa08f4e547c9c62d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.189.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5acb4445a00aa0117195d0b6a3f0657b685f329b8048408f25dcfddfeb0a8e0b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.189.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "48bc3e850031301b8ab337e3047580a77b23e4307348ae04defc6315416760db"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.189.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "928692d9c0ee607229815fbaaba5230e7f1f82fb2d13a840d67f05f8b22465c0"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

