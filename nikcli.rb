# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-24T22:20:09.135Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.117.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.117.0/nikcli-ai-darwin-x64.zip"
      sha256 "aeb50e5f756e5aaf424bb523a945337102966ea41fb687b4db1e02a6e1517100"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.117.0/nikcli-ai-darwin-arm64.zip"
      sha256 "734fc39cbc81e191d1f4ca0129da87854e24c801aabf93cd2ab8fcec7ea82224"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.117.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "99e47fee8972a31eb7c8e8c2779e6d29a33c70d2dce29314fdf107a7988bf718"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.117.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "fd245b0f725ebe1fda686617e971e2f7aaa66b953f3f7bae2e73efa92da72c56"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

