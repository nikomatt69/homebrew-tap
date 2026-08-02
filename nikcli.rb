# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-02T21:27:20.603Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.227.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.227.0/nikcli-ai-darwin-x64.zip"
      sha256 "b9b22b5a98b017cdc27e2838a12c668ec072bc3f9e2b707a8c6290370a1fe5a5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.227.0/nikcli-ai-darwin-arm64.zip"
      sha256 "3172672c6811ebf95275e1ed9392fe1a9e22680f51ad1bf544540f21a6634916"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.227.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "74f0877493a03f3d6f8dd61b0c3b8030e98d3c230c222c524f45a02d6e845160"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.227.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f75c8c939bf19fd3aa7bd33bc32f937ff1de0815194694422ef19b1cda24e74d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

