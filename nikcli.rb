# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-21T17:08:29.735Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.184.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.184.0/nikcli-ai-darwin-x64.zip"
      sha256 "2be3d603bfb50270dc85af671a5c251412ba88cda445be1c7e7d30682b866feb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.184.0/nikcli-ai-darwin-arm64.zip"
      sha256 "14d10ad32a196f0d402fc958c0d970156460b5740565fe4c0e56c0c2bc2d63e2"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.184.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "b91089ff43399f6bcba3f9c293b0f6b67a42f7723aadaddc430d3bcb12983780"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.184.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6d8c4adf4f5f3ebeb2e52d5c6c196156ca3dbeea093f391cc456e25f45775f51"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

