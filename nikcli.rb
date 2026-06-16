# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-16T20:09:55.951Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.78.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.78.0/nikcli-ai-darwin-x64.zip"
      sha256 "912aa0e941e7a8368721b14703cc45900503de7717704e9dc693e5ec6a42e63d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.78.0/nikcli-ai-darwin-arm64.zip"
      sha256 "094a92ce28b3566b4f6043f3b174632f2b012b2d8f7e9d8d481b7636ba3afda3"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.78.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5921a26d8213df1ae4e0abd7bb8d288a793228f130cc835f354d8db2edfa2373"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.78.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a46db7a2567638b172be7c7212f2a5a7422f102ae77200a61be99e31738713cf"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

