# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-22T14:19:05.844Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.99.0/nikcli-ai-darwin-x64.zip"
      sha256 "7d7558b03fa9c9d5a2fbc7083f3039b0a492deaeba8deeb9de9804e70c99df89"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.99.0/nikcli-ai-darwin-arm64.zip"
      sha256 "02b1b9808cfe6ea3a63a799224d02d9433fb15d910b94fae12d5102790d30ba6"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.99.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "07ab99af3a269105159fb8931f61ee0da6882bd9d154d095a74a18773ff66828"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.99.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d832f05ab0b5f3f16c372371cc0c527640d236261898aea3928900ed4d45c73f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

