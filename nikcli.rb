# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-31T14:40:44.974Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.34.0/nikcli-ai-darwin-x64.zip"
      sha256 "34604ef78ef5f0149e732515c9100e39058b2a8470468f00f78f69bcc7b97efb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.34.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d2ec3771b0e3570736dd91124bccc68afbd86344a4fcbad06b4f194ffeb205c3"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.34.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8d715708a3e08ca018aad48c3bac9a7b88f82bab8f6113a2629849e66f0fa0a5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.34.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "306885e15c8b8f08097b5b8ec3fda109f7e06b060390655949895d86de0e700e"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

