# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-05T18:29:09.568Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.51.0/nikcli-ai-darwin-x64.zip"
      sha256 "b622851667cc291e68a852c83564ad9b52c807f4b078a1a9ae3aefe691404f56"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.51.0/nikcli-ai-darwin-arm64.zip"
      sha256 "31b4b1795c97c77871fe18a36ad6444a0f7263d2d95b194482e0102828e9fff5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.51.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "13c2f397171e37f77bd30f28d15a4eb693858a556b594fbc66063fc6692bd5e2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.51.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f8001f15e073d2787dfd42494283b34dab7610ecbfc94c6e359d3c4efc4502ea"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

