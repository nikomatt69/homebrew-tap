# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-10T17:06:03.414Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.155.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.155.0/nikcli-ai-darwin-x64.zip"
      sha256 "8ba14b04409abb792f1aa88c87c3409095c7661be5e486a749161dfa8cbb7236"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.155.0/nikcli-ai-darwin-arm64.zip"
      sha256 "71097d170423d11f01aa87c0dfa04dde2904d46a4484b3ae90cd1f9426fab3bd"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.155.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5510240cdfd3e81aedea891902ff2952bba3d7f7d99fcd6c937941eca529c5fc"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.155.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ea5e003aa4a925f09d658f6a9db5b416af662fd55b20c935c825c5d86391aa5a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

