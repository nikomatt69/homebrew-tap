# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-07T13:24:23.302Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.144.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.144.0/nikcli-ai-darwin-x64.zip"
      sha256 "7c711f189ddc8dac24eee53e6d1afe2700cfff579af2221bbed94552108decea"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.144.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4cf5e4d1d40ff876d572cb3623756c29c380f19a06023a93378101cebea117cc"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.144.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6634a3b8b2b1ac2c32d540e6001ac605b3a46f4bccc8729c74426f6ce698cf35"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.144.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "60e3d77159729a051960c68ee0ec3beb20edfc886b6b648ef91f35de6936231b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

