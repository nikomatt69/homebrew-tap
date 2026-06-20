# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-20T04:06:28.965Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.89.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.89.0/nikcli-ai-darwin-x64.zip"
      sha256 "55136a7c1daafddf1bf9597bfc3485610b4db255631be4e8e4a7c832eb403d20"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.89.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a739149b46b5780b1b69c55e33a24cc9669ae8b7023cf761070a6247c840fdc2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.89.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "4396523d8f3a6db0935ad7081caa183eb92d434185f6202a04d2f284cc00993e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.89.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "94fe44fbcedc6ef8e6b35215a7008ca08a591d7624c51357f5ddda499e9dc0e5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

