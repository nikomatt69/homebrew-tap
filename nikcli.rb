# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-02T23:09:48.392Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.326.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.326.0/nikcli-ai-darwin-x64.zip"
      sha256 "f898b6dd88fc285677039560e51bd6d618702c46ec858d78a18fdb9425ab686c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.326.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a27aeeff918df2b428cee8cc5181fc797400c9d7c1cae498d0de75c4acb904a7"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.326.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "442177198a6f699b51ebde84625d81d1c40e3e9d66b920a10daeb783326e9732"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.326.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "792d30816a13c1dc1a12ac7ff4a5bbeebac5ddf78f02a58a5badc8c6fba81100"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

