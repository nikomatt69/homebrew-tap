# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-22T21:41:49.674Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.309.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.309.0/nikcli-ai-darwin-x64.zip"
      sha256 "3c8fe222a37795150102c6eff6acd5654003cac86e866e02024163995d289ffe"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.309.0/nikcli-ai-darwin-arm64.zip"
      sha256 "4155216dad9c37c67b7da39476e3c4def466e49700d4701b6fa815373e7705a1"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.309.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "0821746953c59138227e1feabaff622fe2132ec427147f55130b50d9cbf0a640"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.309.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0cbd91511e3f022e0aadce9fa57f33c91d07c09dde4722b4765841156e156f07"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

