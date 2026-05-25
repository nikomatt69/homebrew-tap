# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-25T15:41:25.424Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.28.0/nikcli-ai-darwin-x64.zip"
      sha256 "bda0be108ed8d245de6f5fc2c117b082210a8680cc41dcf9d9cdc6bef67eb6e2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.28.0/nikcli-ai-darwin-arm64.zip"
      sha256 "d3b6b206f2e07dce0c295c285bd776a1296d789a3fbac17358952f51cc783c44"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.28.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "df8a7c201a8181dc597664fca55670e7021388a793c83f9133e98d46a2bd1000"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.28.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ef5c277fad32879dde7804197cda2892a1be51651ec98f0c533a9faee471aa2f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

