# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-29T22:20:36.948Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.130.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.130.0/nikcli-ai-darwin-x64.zip"
      sha256 "ee42c22ad97d6ab8328564ff98c53591d8830eef89b98f7a376392f8f0cc0081"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.130.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5989e0b6b5de6cee9ea4177070e42795735f9e61220db7feba2cd58345014b84"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.130.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "bb6e993ec7a0dbe075eef79d15ee44eba7b0249992ed918d6e4925371e76f08b"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.130.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "90a206a63c0358ff6bb37a03b761bc2190fe74bdd15d56553ea40462515d3cd7"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

