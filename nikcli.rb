# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-07T13:30:46.040Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.54.0/nikcli-ai-darwin-x64.zip"
      sha256 "6ad86867d69e317e9b936eda9211ecd50a756aab6077d5721bd168f5130824ee"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.54.0/nikcli-ai-darwin-arm64.zip"
      sha256 "14c20e9c1c927ddb904f7448da34eb5cd76cd3b2acdcb8cf5d894492e45e0561"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.54.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "de7cffb3d81d2ab3fd01f47becc3f9a7d96d4c522c47643ee7a1c9088f26467a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.54.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "285eaeabbeae51b5038c518031645050c99f8e5ff7ec6bc55bb0f36867798a4b"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

