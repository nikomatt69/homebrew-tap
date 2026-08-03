# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-03T17:21:04.713Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.232.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.232.0/nikcli-ai-darwin-x64.zip"
      sha256 "059806e2c9090dfd98b17253ad81adc498fc8c0ef86c307e9f261fe9b10433dc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.232.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5cb074d53176701c3cf9738bdd1c661c19d8b2ee130e249e1abd15358119df6d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.232.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "85ad347753a1614465ab041299d3f880e577b54da98fd56bc3369c789fb67e07"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.232.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "958df47b68534f5a6b1fefdb823555ab2cfa83b9a7bb5be46c67f850e6ef9c48"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

