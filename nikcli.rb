# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-27T22:48:44.180Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.206.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.206.0/nikcli-ai-darwin-x64.zip"
      sha256 "77573ea33d03860a8c3d8b05396611519c79d8758f15b801ce0a32ade9184785"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.206.0/nikcli-ai-darwin-arm64.zip"
      sha256 "74fd4f10c9ff67df434153681bcb12404e43c4632e87382a94ebebb1072924c5"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.206.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3bddb1d70c5dfd8c915505479b1fb784defae114fb5c3d01d9893e40569318b5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.206.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1277faecf291a5572f566e1fcada04aa5773a06d4f21b65177476f5cf315636d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

