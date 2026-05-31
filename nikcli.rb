# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-31T14:55:13.916Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.35.0/nikcli-ai-darwin-x64.zip"
      sha256 "dbab22c724cdc862a6e69c6fa02725d2826ce41ef8bfc5935a4bd80b76c8bc33"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.35.0/nikcli-ai-darwin-arm64.zip"
      sha256 "f36d5d99b9a3d8f8c6ad52a5f254923095e23efa707724d87783ae14b05e5047"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.35.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f26f35ad0b6cc75f3c0d2c83099bf7abefd31e43d6252c44013d89e2f547d691"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.35.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "242f1a33b7e7e7c9404dd168b4e5869005f931169a610068ddaba255ad7b78a8"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

