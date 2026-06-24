# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T21:38:07.635Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.116.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.116.0/nikcli-ai-darwin-x64.zip"
      sha256 "a8dcc393d3d240d10406ef236469144cb3926e56b54f43250ac96a372304d21a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.116.0/nikcli-ai-darwin-arm64.zip"
      sha256 "677964c636d0e93dc398afab7aef9fee39ae2b203a4c9e40d21dda1b2f051c40"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.116.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0f9903634eb89a02d3965b2bebb01d7111237a3e109c6607f4eac179c5f3b92f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.116.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "52e3a7e7131fd73cca043f8d6cbfb8d005e2f64a5f375aedf10563e7c837281f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

