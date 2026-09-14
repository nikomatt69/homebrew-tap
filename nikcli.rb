# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-14T12:30:18.436Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.351.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.351.0/nikcli-ai-darwin-x64.zip"
      sha256 "821f64957b772949c6f88df85aa88fbd3a31f252d98f412c1e4f4ddac38a14e1"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.351.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1368024cc902c07cc5587238ecd135746957a4a32c23ba4864d45cef638fb983"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.351.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "6c50a26ce6befc0df348184e6ed1b0ec7ac6b4137d5af5222b6e7b02dfc095db"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.351.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "7897d01fe486cf8ae7fabbd3e5a27d81f9383c4e58f767f31c47c3517b9f2889"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

