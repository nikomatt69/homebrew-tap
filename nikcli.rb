# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-18T12:21:47.897Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.176.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.176.0/nikcli-ai-darwin-x64.zip"
      sha256 "77c79a25c83a29a2f63889d5826bb5046023f897d8b738ad68de011b8e11bb23"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.176.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e1b2993ff234da8209bc20c66ea55b131fd5aaf65c05fc60e519279bb70c73db"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.176.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "802ee6273a399cc3d8bc480ea467f25e07922f351b80544fd4e0c9a72f5e2a46"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.176.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "9fdd080350ca6f425643c824669f67f5fa81b65a00c2c18c9400c726f8efbc3b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

